#!/usr/bin/node

// Check if an argument is passed
if (process.argv[2] === undefined) {
  // No argument passed
  console.log('No argument');
} else {
  // Print the first argument passed
  console.log(process.argv[2]);
}
