----------------------------------------------------------
-- KÕIK PÄRINGUD
----------------------------------------------------------

---------------------------------------------------------
-- USERS
---------------------------------------------------------
select * from [Users];

---------------------------------------------------------
-- PROFILE PAGE (USER PÄRING)
---------------------------------------------------------
SELECT U.ID,
           U.Full_Name,
           U.Username,
           U.Email,
           U.Created_at,
           G.Name AS Gender
    FROM Users U
    LEFT JOIN Gender G ON U.Gender_id = G.ID
    WHERE U.ID = 33;

---------------------------------------------------------
-- PROFILE PAGE (POSTS PÄRING)
---------------------------------------------------------
SELECT P.ID,
           P.Content,
           P.Created_at
    FROM Posts P
    WHERE P.Users_id = 33
    ORDER BY P.Created_at DESC;


---------------------------------------------------------
-- POSTS PÄRING
---------------------------------------------------------
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

---------------------------------------------------------
-- STATISTIKA PÄRING
---------------------------------------------------------
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
      ) AS TotalPostsWithMedia;


---------------------------------------------------------
-- TopActiveUsers PÄRING
---------------------------------------------------------
SELECT TOP 10 
      U.ID,
      U.Full_Name,
      U.Username,
      COUNT(P.ID) AS PostCount
    FROM Users U
    LEFT JOIN Posts P ON U.ID = P.Users_id
    GROUP BY U.ID, U.Full_Name, U.Username
    ORDER BY PostCount DESC;
