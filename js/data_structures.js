var horseColors = ["green", "pink", "blue", "turquoise"]
var horseNames = ["ed", "delphi", "epona", "ginger"]

function addToArray( list, newItem ) {
   list.push(newItem);
   return list;
}

console.log(addToArray(horseColors, "red"))
console.log(addToArray(horseNames, "jessie"))

function combineArry(horseColors, horseNames) {
  if (horseColors.length == horseNames.length) {
    var horseHash = {}
    for (i = 0; i < horseNames.length; i++){
      // Key Value Pair
      horseHash[horseNames[i]] = horseColors[i]; }
    return horseHash} 
  else{
    return false
  }

}
console.log(combineArry(horseColors,horseNames))


function Car(brand, owner) {
  this.brand = brand;
  this.owner = owner;
  this.speed = 0;
  this.setSpeed = function(speed) {
  this.speed = speed; 
  }
}
var car = new Car("Toyota", "James")
car.setSpeed(60)
console.log(car, car.brand, car.owner, car.speed)

var newCar = new Car("Jag", "Linda")
newCar.setSpeed(100)
console.log(newCar, newCar.brand, newCar.owner, newCar.speed)

var newerCar = new Car("Tesla", "Royce")
newerCar.setSpeed(90)
console.log(newerCar, newerCar.brand, newerCar.owner, newerCar.speed)








