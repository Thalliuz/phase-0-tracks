var array = ["hello", "goodbye", "long", "time", "no", "see"]
array.sort();
console.log(array)
function returnGoodbye(array) {
var longestSring = array[0];
return longestSring;
}
// Driver code
console.log(returnGoodbye(array));

// need to figure this out.
//var blah = ({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});
//console.log(andAgain)


//builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)
//Write a function that takes an integer for length
function randomWordsArray(intForLength) {
var alphabet = "abcdefghijklmnopqrstuvwxyz";
var array = [];
for (i = 0; i < intForLength; i++) {
  var randomWord = ""
  var randomNumber = Math.floor(Math.random() * (11 - 1)) + 1;
for ( letter = 0; letter < randomNumber; letter++){
var randomLetterIndex = Math.floor(Math.random() * (alphabet.length - 0))
  randomWord += alphabet[randomLetterIndex]
  }
  array.push(randomWord)
  
  console.log(array)
  }
  return array
  }
  console.log(randomWordsArray(4))
  

//how to make a random letter in javascript 

//loop 3 times
