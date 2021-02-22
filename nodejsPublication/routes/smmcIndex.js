  const nodejsdb = require('./smmcNodejsdb.js');
  var fs = require('fs');
  const mysqldump = require('mysqldump');

  var TAG = 'smmcIndex.js';

  module.exports = {
      getHomePage: (req, res) => {
          let query = "SELECT * FROM `smmcDocsTable` ORDER BY YEAR ASC, MONTH  ASC, DAY DESC;"; // query database to get all the players      
          // execute query
          nodejsdb.sqlConnection(query, function(err, result) {
              //db.query(query, (err, result) => {
              if (err) {
                  res.redirect('/');
              }
              message = '';
              res.render('index.ejs', {
                  message,
                  title: "Welcome to SMMCLab | View Docs",
                  players: decodeJson(result)
              });
          });
      },
      exportDB2Json: (req, res) => {
          let query = "SELECT * FROM `smmcDocsTable` ORDER BY YEAR ASC, MONTH  ASC, DAY DESC;"; // query database to get all the players      
          // execute query
          nodejsdb.sqlConnection(query, function(err, result) {
              //db.query(query, (err, result) => {
              if (err) {
                  res.redirect('/');
              }
              var json = JSON.stringify(decodeJson(result));
              fs.writeFile("./public/assets/mysql/dbInfor.json", json, function(err) {
                  if (err) throw err;
                  console.log(TAG, 'expport database completed!');
              });
              res.redirect('/');
          });
          mysqldump({
              connection: {
                  host: 'localhost',
                  user: 'root',
                  password: '123456789',
                  database: 'mydb',
              },
              dumpToFile: './public/assets/mysql/dump.sql',
          });
      },
  };

  function decodeJson(json) {
      for (var i = 0; i < json.length; i++) {
          var tmp = json[i];
          json[i] = {
              "docsType": hexDecode(tmp.docsType),
              "authorList": hexDecode(tmp.authorList),
              "title": hexDecode(tmp.title),
              "journalConferName": hexDecode(tmp.journalConferName),
              "year": hexDecode(tmp.year),
              "month": hexDecode(tmp.month),
              "day": hexDecode(tmp.day),
              "docsLink": hexDecode(tmp.docsLink),
              "volNoPP": hexDecode(tmp.volNoPP),
              "docsFile": hexDecode(tmp.docsFile)
          };
      }
      return json;
  }

  hexDecode = function(str) {
      var j;
      var hexes = str.match(/.{1,4}/g) || [];
      var back = "";
      for (j = 0; j < hexes.length; j++) {
          back += String.fromCharCode(parseInt(hexes[j], 16));
      }
      return back;
  }
  hexEncode = function(str) {
      var hex, i;
      var result = "";
      for (i = 0; i < str.length; i++) {
          hex = str.charCodeAt(i).toString(16);
          result += ("000" + hex).slice(-4);
      }
      return result
  }