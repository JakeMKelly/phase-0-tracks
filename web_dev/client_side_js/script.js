console.log("Bernie is skating!");

function addArialFont() {
  var fontChange = document.getElementById('skateboarding-basics');
  fontChange.style.fontFamily = "Arial, Helvetica Neue, Helvetica, sans-serif";
}

addArialFont();


function showPhoto(event) {
  event.target.style.visibility = "hidden"; 
}

var bernie = document.getElementById("bernie-hawk");
bernie.addEventListener("click", showPhoto);
