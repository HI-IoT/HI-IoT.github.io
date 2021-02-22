  /*
      
  */
  var mysql = require('mysql');
  var fs = require('fs');
  
  var TAG = 'nodejsdb.js';
  
  function createDatabase() {
      var con = mysql.createConnection({
          host: "localhost",
          user: "root",
          password: "123456789"
      });
      con.connect(function(err) {
          if (err !== null) {
              console.log(TAG, "[MYSQL] Error connecting to mysql:" + err + '\n');
          }
      });
      var createSQLdb = 'CREATE DATABASE IF NOT EXISTS mydb;';

      con.query(createSQLdb, function(err) {
          con.end(); // close the connection
          if (err) {
              console.log(TAG, "[MYSQL] Error connecting to mysql:" + err + '\n');
          }
          console.log(TAG, 'mydb has been created');
          
          var sql = 'CREATE TABLE IF NOT EXISTS smmcDocsTable (docsType VARCHAR(1000) NOT NULL, authorList VARCHAR(1000) NOT NULL, title VARCHAR(1000) NOT NULL, journalConferName VARCHAR(1000) NOT NULL, year VARCHAR(1000) NOT NULL, month VARCHAR(1000) NOT NULL, day VARCHAR(1000) NOT NULL,  volNoPP VARCHAR(1000) NOT NULL, docsLink VARCHAR(1000) NOT NULL, docsFile VARCHAR(1000) NOT NULL, PRIMARY KEY (title));';
          sqlConnection(sql, function() {
              console.log(TAG, 'smmcDocsTable has been created');
          });
      });
  }
  
  // for few connections
  var sqlConnection = function (sql, next) {
      var connection = mysql.createConnection({
          host: 'localhost',
          user: 'root',
          password: '123456789',
          database: 'mydb'
      }); 
      connection.connect(function(err) {
          if (err !== null) {
              console.log(TAG, "[MYSQL] Error connecting to mysql:" + err + '\n');
          }
      });
      connection.query(sql, function(err) {
          connection.end(); // close the connection
          if (err) {
              console.log(TAG, "[MYSQL] Error connecting to mysql:" + err + '\n');
          }
          // Execute the callback
          next.apply(this, arguments);
      });
  }
  
  module.exports.createDatabase = createDatabase;
  module.exports.sqlConnection = sqlConnection;