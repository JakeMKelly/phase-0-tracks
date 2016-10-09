// Write function that returns the longest phrase or word in an array.
// Use .length to compare the length of each.
// Use an if statement to store the longest string in that variable as it iterates.
// return the variable after iterating through entire array
function length_finder(string_array) {
  var longest_string = '';
  for (index = 0; index < string_array.length; ++index) {
    if (string_array[index].length > longest_string.length) {
      longest_string = string_array[index];
    }
  }
  return longest_string;
}


// Release 2:
// Write a function that iterates through an object and combines key/value into one string
// if any string is equal to any string made from a second object, return true.



// Driver Code
var test_array = ["long phrase","longest phrase","longer phrase"];
console.log (length_finder(test_array));