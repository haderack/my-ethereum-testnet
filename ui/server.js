'use strict';

const express = require('express');

// Constants
const PORT = 8080;

// App
const app = express();
var path = require('path');
app.get('/', function (req, res) {
  res.send('Hello world\n');
  //res.sendFile(path.join(__dirname + '/index.html'));
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);