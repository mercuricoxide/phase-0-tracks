console.log("The script is running!");

// function addNavyBorder() {
//   var photo = document.getElementById("luffyphoto");
//   photo.style.border = "2px solid navy";
// }

// var photo = document.getElementById("luffyphoto");
// photo.addEventListener("click", addNavyBorder);

// MAKE DRY

function addNavyBorder(event) {
  event.target.style.border = "2px solid navy";
}

var photo = document.getElementById("luffyphoto");
photo.addEventListener("click", addNavyBorder);