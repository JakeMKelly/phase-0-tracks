// Name a variable
// Run a loop through each letter in the argument, starting with length -1 
// as index
// Add each letter to the variable for the new word
// print word to console
function reverse(word_to_flip) {
	var flipped_word = '';
	for (var i = word_to_flip.length - 1; i >= 0; i --) {
		flipped_word += word_to_flip[i];
		return flipped_word
	}
}

reverse("hello")