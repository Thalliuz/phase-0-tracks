//var array = ["hello", "goodbye", "long", "time", "no", "see"]
//console.log(array)
var array = []
//create a function checking to see which of the words in the array are the longest. 
//return the longest
function returnBiggestWord(array) {
  var longestIndex = 0 
  for (index = 0; index < array.length; index++) {
    if (array[index].length > array[longestIndex].length)
      longestIndex = index}

return array[longestIndex]}

// Driver code
console.log(returnBiggestWord(array));

// function checks to see if the compared objects are true or false 
//share at least one key-value pair
function objectCheck(object1, object2) {
  for (key1 in object1) {
    for (key2 in object2){
      if (key1 == key2 && object1[key1] == object2[key2]){
        return true 
      }
    }

  }
return false 
}

//driver code
console.log(objectCheck({name: "Steven", age: 54}, {name: "Tamir", age: 54})); //true
console.log(objectCheck({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3})); 
//true


// create a function tht takes in an integer and returns an array with random words 
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
    array.push(randomWord) }
  
  return array}
  //TEST//console.log(randomWordsArray(4))
  


// loop to run through the two funcions 
for (i = 1; i < 11 ; i++){
   var newWordsArray=randomWordsArray(i)
   console.log(newWordsArray)
   console.log(returnBiggestWord(newWordsArray))
}
