console.log("Bernie is skating!");

function addArialFont() {
  var fontChange = document.getElementById('skateboarding-basics');
  fontChange.style.fontFamily = "Arial, Helvetica Neue, Helvetica, sans-serif";
}

addArialFont();

document.getElementById('bernie-hawk').style.visibility = "hidden";

function hidePhoto(){
  console.log("Worked!")
  document.getElementById('bernie-hawk').style.visibility = "visible"; 
  event.target.style.visibility = "hidden";
}

var button = document.getElementById("button");
button.addEventListener("click", hidePhoto);
