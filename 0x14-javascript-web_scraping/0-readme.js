#!/usr/bin/node

const fs = require('fs');

// Get the file path from the first command line argument
const filePath = process.argv[2];

fs.readFile(filePath, 'utf-8', (err, data) => {
  if (err) {
    // Print the error object if an error occurred
    console.log(err);
  } else {
    // Print the file content
    console.log(data);
  }
});
