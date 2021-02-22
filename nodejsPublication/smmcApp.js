  const express = require('express');
  const fileUpload = require('express-fileupload');
  const bodyParser = require('body-parser');
  const mysql = require('mysql');
  const path = require('path');
  const app = express();

  const nodejsdb = require('./routes/smmcNodejsdb.js');

  const {
      getHomePage,
      exportDB2Json
  } = require('./routes/smmcIndex.js');
  
  const {
      addDocsPage,
      addDocs,
      deleteDocs,
      editDocs,
      editDocsPage
  } = require('./routes/smmcDocsElement.js');
  const port = 45000;

  // create database and table
  nodejsdb.createDatabase();

  // configure middleware
  app.set('port', process.env.port || port); // set express to use this port
  app.set('views', path.join(__dirname, 'views')); // set express to look in this folder to render our view
  app.set('view engine', 'ejs'); // configure template engine
  app.use(bodyParser.urlencoded({
      extended: false
  }));
  app.use(bodyParser.json()); // parse form data client
  app.use(express.static(path.join(__dirname, 'public'))); // configure express to use public folder
  app.use(fileUpload()); // configure fileupload

  // routes for the app

  app.get('/', getHomePage);
  app.get('/add', addDocsPage);
  app.get('/edit/:title', editDocsPage);
  app.get('/delete/:title', deleteDocs);
  app.post('/add', addDocs);
  app.post('/edit/:title', editDocs);
  
  app.get('/export', exportDB2Json);

  // set the app to listen on the port
  app.listen(port, () => {
      console.log(`Server running on port: ${port}`);
  });