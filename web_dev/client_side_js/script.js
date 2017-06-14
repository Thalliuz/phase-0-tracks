let button = document.getElementById("button")
let list = document.getElementById("list")
function toggle() {
//list.style.display = "none" ;
let hiddenValue = list.classList == "hidden"
if (hiddenValue) {
list.classList.remove("hidden") 
}
else {
  list.classList.add("hidden")
}
}

button.addEventListener("click", toggle)
