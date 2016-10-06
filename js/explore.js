// Name a variable
// Run a loop through each letter in the variable, starting with -1 as index
// print word to console
function reverse(word_to_flip) {
	for (var i = -1; i < word_to_flip.length; i -= 1) {
		console.log(word_to_flip[i]);
	}
}

reverse("hello")