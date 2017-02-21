//create a function that reverses a string
//use the split method to turn the string into an array
//use the reverse method to reverse the array
//use the join method to turn the array back into a string

function reverse(word) {
  var makeArray = word.split("")
  var reverseArray = makeArray.reverse();
  var makeString = reverseArray.join("");
  return makeString;
}

reverse_word = reverse("ditto")

if (1 == 1) {
  console.log(reverse_word)
}