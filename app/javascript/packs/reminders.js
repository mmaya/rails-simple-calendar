window.showReminders = function(day, id) {
  document.querySelectorAll(".details").forEach(element => {element.style = "display: none;";element.classList.remove("in");});
  
  document.querySelector(`#detail-${id}`).classList.add("in");
  document.querySelector(`#detail-${id}`).style = "display: 'block';";
}