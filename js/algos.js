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
// function object_comparison(first_obj, second_obj){
//   var person_array = [];
//   var other_person_array = [];
//   match_bool = false;
//   for (var key in first_obj) {
//     person_array.push(key + first_obj[key]);
//   }

//   for (var key2 in second_obj) {
//     other_person_array.push(key2 + second_obj[key2]);
//   }

//   for (i = 0; i < person_array.length; i++) {
//       if (other_person_array.includes(person_array[i])) {
//         match_bool = true;
//       }
//   }
//   return match_bool;
// }

// This works in repl.it, and ".includes" is covered on MDN. However, my version of node doesn't recognize .includes as a function
// -----------------------------------------------
// Write a function that builds an array made up of strings.  The length of the array is determined by the integer fed as an argument. 
// The strings should be randomly chosen letters.
// The length of each string should be a random number between 1 and 10
function array_generator(length_integer){
  var built_array = [];
  var random_string = '';
  var alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  for (i = 0; i < length_integer; i++ ) {
    for (v = 0; v <= Math.floor((Math.random() * 10) + 1); v++) {
      random_string += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    }
    built_array.push(random_string);
    var random_string = '';
}
return built_array;
}

// Driver Code
var test_array = ["long phrase","longest phrase","longer phrase"];
console.log (length_finder(test_array));
// var person = {name: "Steven", age: 54, gender: "male"};
// var other_person = {name: "Tamir", age: 54, gender: "undefined"};
// console.log (object_comparison(person, other_person));
// var person = {name: "Sally", age: 44, gender: "female"};
// var other_person = {name: "Tanya", age: 54, gender: "undefined"};
// console.log (object_comparison(person, other_person));
console.log (array_generator(5));