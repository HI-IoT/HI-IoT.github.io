  const fs = require('fs');
  const nodejsdb = require('./smmcNodejsdb.js');

  module.exports = {
      addDocsPage: (req, res) => {
          res.render('add-player.ejs', {
              title: "Welcome to SMMCLab | Add a new docs",
              message: ''
          });
      },
      addDocs: (req, res) => {
          if (!req.files) {
              return res.status(400).send("No files were uploaded.");
          }

          let docsType = req.body.docsType;
          let authorList = req.body.authorList;
          let title = req.body.title;
          let journalConferName = req.body.journalConferName;
          let datepicker = req.body.datepicker;
          let docsLink = req.body.docsLink;
          let volNoPP = req.body.volNoPP;
          let docsFile = req.files.docsFile;

          var dateArr = datepicker.split('/');
          var year = dateArr[2];
          var month = dateArr[0];
          var day = dateArr[1];

          let fileExtension = docsFile.mimetype.split('/')[1];
          var subStrInt = Math.round(docsFile.name.length * 2 / 3);
          var file_name = year + '.' + month + '.' + day + '_' + docsFile.name.substring(0, subStrInt) + '.' + fileExtension;

          let usernameQuery = "SELECT * FROM `smmcDocsTable` WHERE title = '" + hexEn(title) + "'";

          nodejsdb.sqlConnection(usernameQuery, function(err, result) {
              //db.query(usernameQuery, (err, result) => {
              if (err) {
                  return res.status(500).send(err);
              }
              if (result.length > 0) {
                  message = 'Document title already exists';
                  res.render('add-player.ejs', {
                      message,
                      title: "Welcome to SMMCLab | Add a new docs",
                  });
              } else {
                  // check the filetype before uploading it
                  if (docsFile.mimetype === 'application/pdf' || docsFile.mimetype === 'application/zip' || docsFile.mimetype === 'application/msword' || docsFile.mimetype === 'application/vnd.openxmlformats-officedocument.wordprocessingml.document') {
                      // upload the file to the /public/assets/img directory
                      docsFile.mv(`public/assets/docs/${file_name}`, (err) => {
                          if (err) {
                              return res.status(500).send(err);
                          }
                          // send the player's details to the database
                          let query = "INSERT INTO `smmcDocsTable` (docsType, authorList, title, journalConferName, year, month, day, docsLink, volNoPP, docsFile) VALUES ('" +
                              hexEn(docsType) + "', '" + hexEn(authorList) + "', '" + hexEn(title) + "', '" + hexEn(journalConferName) + "', '" + hexEn(year) + "', '" + hexEn(month) + "', '" + hexEn(day) + "', '" + hexEn(docsLink) + "', '" + hexEn(volNoPP) + "', '" + hexEn(file_name) + "')";

                          nodejsdb.sqlConnection(query, function(err, result) {
                              //db.query(query, (err, result) => {
                              if (err) {
                                  return res.status(500).send(err);
                              }
                              res.redirect('/');
                          });
                      });
                  } else {
                      message = "Invalid File format. Only 'pdf', 'msword' and 'zip' files are allowed.";
                      res.render('add-player.ejs', {
                          message,
                          title: "Welcome to SMMCLab | Add a new docs",
                      });
                  }
              }
          });
      },
      editDocsPage: (req, res) => {
          let playerId = req.params.title;
          let query = "SELECT * FROM `smmcDocsTable` WHERE title = '" + hexEn(playerId) + "' ";
          nodejsdb.sqlConnection(query, function(err, result) {
              //db.query(query, (err, result) => {
              if (err) {
                  return res.status(500).send(err);
              }
              res.render('edit-player.ejs', {
                  title: "Edit  Docs",
                  player: decodeJson(result[0]),
                  message: ''
              });
              console.log(decodeJson(result[0]))
          });
      },
      editDocs: (req, res) => {
          let docsType = req.body.docsType;
          let authorList = req.body.authorList;
          let title = req.params.title;
          let journalConferName = req.body.journalConferName;
          let datepicker = req.body.datepicker;
          let docsLink = req.body.docsLink;
          let volNoPP = req.body.volNoPP;

          var dateArr = datepicker.split('/');
          var year = dateArr[2];
          var month = dateArr[0];
          var day = dateArr[1];

          let query = "UPDATE `smmcDocsTable` SET `docsType` = '" + hexEn(docsType) + "', `authorList` = '" + hexEn(authorList) + "', `journalConferName` = '" + hexEn(journalConferName) + "', `docsLink` = '" + hexEn(docsLink) + "', `volNoPP` = '" + hexEn(volNoPP) + "', `year` = '" + hexEn(year) + "', `month` = '" + hexEn(month) + "', `day` = '" + hexEn(day) + "' WHERE `title` = '" + hexEn(title) + "'";

          nodejsdb.sqlConnection(query, function(err, result) {
              //db.query(query, (err, result) => {
              if (err) {
                  return res.status(500).send(err);
              }
              res.redirect('/');
          });
      },
      deleteDocs: (req, res) => {
          let playerId = req.params.title;
          let getImageQuery = 'SELECT docsFile from `smmcDocsTable` WHERE title = "' + hexEn(playerId) + '"';
          let deleteUserQuery = 'DELETE FROM smmcDocsTable WHERE title = "' + hexEn(playerId) + '"';

          nodejsdb.sqlConnection(getImageQuery, function(err, result) {
              //db.query(getImageQuery, (err, result) => {
              if (err) {
                  return res.status(500).send(err);
              }
              let image = hexDecode(result[0].docsFile);

              fs.unlink(`public/assets/docs/${image}`, (err) => {
                  if (err) {
                      return res.status(500).send(err);
                  }

                  nodejsdb.sqlConnection(deleteUserQuery, function(err, result) {
                      //db.query(deleteUserQuery, (err, result) => {
                      if (err) {
                          return res.status(500).send(err);
                      }
                      res.redirect('/');
                  });
              });
          });
      }
  };

  function decodeJson(json) {
      tmp = json;
      json = {
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
  hexEn = function(str) {
      var hex, i;
      var result = "";
      for (i = 0; i < str.length; i++) {
          hex = str.charCodeAt(i).toString(16);
          result += ("000" + hex).slice(-4);
      }
      return result
  }