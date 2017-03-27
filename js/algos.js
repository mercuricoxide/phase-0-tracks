function largest(array) {
  
  var largest_phrase;

  var largest_length = 0;

  for (var i=0; i < array.length; i++){
    if (array[i].length > largest_length){
      largest_length = array[i].length;
      largest_phrase = array[i];
    }
  }
  return largest_phrase
}

console.log(largest(["hello", "good morning", "goodbye"]));