let sql = require("./sql");

function isNumber(n) {
  return !isNaN(parseFloat(n)) && isFinite(n);
}

exports.index = function (req, res) {
  res.render("mainpage");
};

exports.apiIndex = function (req, res) {
  let model = {
    title: "API Functions",
    api: [
      { name: "Users", url: "/api/users" },
      { name: "User by ID", url: "/api/users/1" },
      { name: "Posts", url: "/api/posts" },
      { name: "General Statistics", url: "/api/stats" },
      { name: "Top 10 Active Users", url: "/api/topActiveUsers" },
    ],
  };

  res.render("api-index", model);
};

exports.users = function (req, res) {
  let query = "select * from [Users]";

  if (req.params.id !== undefined) {
    if (isNumber(req.params.id))
      query = query.concat(" where ID = " + req.params.id);
    else query = query.concat(" where Username = '" + req.params.id + "'");
  }

  sql.querySql(
    query,
    function (data) {
      if (data !== undefined) {
        console.log("Rows Affected " + data.rowsAffected);
        res.render("users", { users: data.recordset });
      }
    },
    function (error) {
      console.log("ERROR: " + error);
      res.status(500).send("ERROR: " + error);
    }
  );
};

exports.profilePage = function (req, res) {
  const id = req.params.id;

  const userQuery = `
    SELECT U.ID,
           U.Full_Name,
           U.Username,
           U.Email,
           U.Created_at,
           G.Name AS Gender
    FROM Users U
    LEFT JOIN Gender G ON U.Gender_id = G.ID
    WHERE U.ID = ${id}
  `;

  const postsQuery = `
    SELECT P.ID,
           P.Content,
           P.Created_at
    FROM Posts P
    WHERE P.Users_id = ${id}
    ORDER BY P.Created_at DESC
  `;

  sql.querySql(
    userQuery,
    function (userData) {
      if (!userData || userData.recordset.length === 0) {
        return res.status(404).send("User not found");
      }

      const user = userData.recordset[0];

      sql.querySql(
        postsQuery,
        function (postsData) {
          const posts = postsData.recordset.map((p) => ({
            ...p,
            Created_at: new Date(p.Created_at).toLocaleString("en-US", {
              year: "numeric",
              month: "short",
              day: "numeric",
            }),
          }));
          res.render("profile", { user, posts });
        },
        function (error) {
          res.status(500).send("ERROR: " + error);
        }
      );
    },
    function (error) {
      res.status(500).send("ERROR: " + error);
    }
  );
};

exports.posts = function (req, res) {
  const query = `
    SELECT 
  P.ID,
  P.Users_id,
  P.Content,
  P.Created_at,

  U.Full_Name,
  U.Username,
  (
    SELECT M.Url, M.MediaType
    FROM Post_Media PM
    LEFT JOIN Media M ON PM.Media_id = M.ID
    WHERE PM.Posts_id = P.ID
    FOR JSON PATH
  ) AS Media,

  (SELECT COUNT(*) FROM Likes L WHERE L.Posts_id = P.ID) AS LikeCount,

  (
    SELECT C.ID, C.Comment, C.Created_at,
           CU.Full_Name, CU.Username
    FROM Comments C
    LEFT JOIN Users CU ON C.Users_id = CU.ID
    WHERE C.Posts_id = P.ID
    ORDER BY C.Created_at ASC
    FOR JSON PATH
  ) AS Comments,

  (
    SELECT H.Name
    FROM Post_Hashtags PH
    LEFT JOIN Hashtags H ON PH.Hashtags_id = H.ID
    WHERE PH.Posts_id = P.ID
    FOR JSON PATH
  ) AS Hashtags

FROM Posts P
LEFT JOIN Users U ON P.Users_id = U.ID
ORDER BY P.Created_at DESC;

  `;

  sql.querySql(
    query,
    function (data) {
      const posts = data.recordset.map((p) => {
        p.Media = p.Media ? JSON.parse(p.Media) : [];
        p.Comments = p.Comments ? JSON.parse(p.Comments) : [];
        p.Hashtags = p.Hashtags ? JSON.parse(p.Hashtags) : [];
        return p;
      });

      res.render("posts", { posts });
    },
    function (error) {
      res.status(500).send("ERROR: " + error);
    }
  );
};

exports.statistics = function (req, res) {
  const query = `
    SELECT
      (SELECT COUNT(*) FROM Users) AS TotalUsers,
      (SELECT COUNT(*) FROM Posts) AS TotalPosts,
      (SELECT COUNT(*) FROM Comments) AS TotalComments,
      (SELECT COUNT(*) FROM Likes) AS TotalLikes,
      (SELECT COUNT(*) FROM Hashtags) AS TotalHashtags,
      (SELECT COUNT(*) FROM Media) AS TotalMedia,

      (
        SELECT AVG(PostCount)
        FROM (
          SELECT Users_id, COUNT(*) AS PostCount
          FROM Posts
          GROUP BY Users_id
        ) AS p1
      ) AS AvgPostsPerUser,

      (
        SELECT MAX(PostCount)
        FROM (
          SELECT Users_id, COUNT(*) AS PostCount
          FROM Posts
          GROUP BY Users_id
        ) AS p2
      ) AS MaxPostsByUser,

      (
        SELECT AVG(CommentCount)
        FROM (
          SELECT Posts_id, COUNT(*) AS CommentCount
          FROM Comments
          GROUP BY Posts_id
        ) AS c1
      ) AS AvgCommentsPerPost,

      (
        SELECT MAX(CommentCount)
        FROM (
          SELECT Posts_id, COUNT(*) AS CommentCount
          FROM Comments
          GROUP BY Posts_id
        ) AS c2
      ) AS MaxCommentsOnPost,

      (
        SELECT AVG(LikeCount)
        FROM (
          SELECT Posts_id, COUNT(*) AS LikeCount
          FROM Likes
          GROUP BY Posts_id
        ) AS l1
      ) AS AvgLikesPerPost,

      (
        SELECT MAX(LikeCount)
        FROM (
          SELECT Posts_id, COUNT(*) AS LikeCount
          FROM Likes
          GROUP BY Posts_id
        ) AS l2
      ) AS MaxLikesOnPost,

      (
        SELECT COUNT(*) 
        FROM Post_Hashtags
      ) AS TotalTaggedPosts,

      (
        SELECT COUNT(*) 
        FROM Post_Media
      ) AS TotalPostsWithMedia
  `;

  sql.querySql(
    query,
    function (data) {
      if (data) {
        res.render("statistics", { stats: data.recordset[0] });
      }
    },
    function (error) {
      res.status(500).send("ERROR: " + error);
    }
  );
};

exports.topActiveUsers = function (req, res) {
  const query = `
    SELECT TOP 10 
      U.ID,
      U.Full_Name,
      U.Username,
      COUNT(P.ID) AS PostCount
    FROM Users U
    LEFT JOIN Posts P ON U.ID = P.Users_id
    GROUP BY U.ID, U.Full_Name, U.Username
    ORDER BY PostCount DESC;
  `;

  sql.querySql(query, function (data) {
    res.render("topActiveUsers", { users: data.recordset });
  });
};

exports.default = function (req, res) {
  res.status(404).send("Invalid route");
};
