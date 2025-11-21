const mssql = require("mssql");

const config = {
  user: "sa",
  password: "Str0ng!Pass",
  server: "localhost",
  database: "MiniTwitter",
  port: 1433,
  options: {
    encrypt: false,
    trustServerCertificate: true
  }
};


let pool;

(async function () {
  try {
    pool = await mssql.connect(config);
    console.log("Connected to DB");
  } catch (err) {
    console.log("ERROR:", err);
  }
})();

exports.querySql = function (sql, onData, onError) {
  pool
    .request()
    .query(sql)
    .then(result => {
      if (onData) onData(result);
    })
    .catch(err => {
      if (onError) onError(err);
    });
};

mssql.on("error", err => {
  console.log("SQL Library Error:", err);
});
