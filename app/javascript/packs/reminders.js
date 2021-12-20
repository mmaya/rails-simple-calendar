window.showReminders = function(day_index, week_index, reminders) {
  document.querySelectorAll(".details").forEach(e => e.remove());
  
  
  var anchor = document.querySelector(`#anchor-${week_index}`)
  
  var left = 35 + day_index*62 + 'px';
  
  console.log(left);
  
  //Create the arrow
  var arrow = createElement('div', 'arrow');
  arrow.style.left = left; 
  
  //Create the reminders wrapper
  details = createElement('div', 'details in');
  details.appendChild(arrow);
  anchor.appendChild(details);  

  //Create reminders
  if(reminders && reminders.length) {
    reminders.forEach(function(reminder) {
      console.log(reminder)
      var div = createElement('div', 'reminder');
      var square = createElement('div', 'reminder-category', '', `background: ${reminder.color || "#fff"}`);
      var span = createElement('span', '', reminder.formatted);

      div.appendChild(square);
      div.appendChild(span);
      details.appendChild(div);
    })
  }else {
    var div = createElement('div', 'reminder empty');
    var span = createElement('span', '', 'No reminders');

    div.appendChild(span);
    details.appendChild(div);
  }
}

window.addEventListener("load", () => {
  const element = document.querySelector("#new_reminder");
  element.addEventListener("ajax:success", (reminder) => {
    const [_data, _status, xhr] = reminder.detail;
    element.insertAdjacentHTML("beforeend", xhr.responseText);
  });
  element.addEventListener("ajax:error", () => {
    element.insertAdjacentHTML("beforeend", "<p>ERROR</p>");
  });
});

function createElement(tagName, className, innerText, style) {
  var ele = document.createElement(tagName);
  if(className) {
    ele.className = className;
  }
  if(style) {
    console.log(style);
    ele.style = style;
  }
  if(innerText) {
    ele.innderText = ele.textContent = innerText;
  }
  return ele;
}