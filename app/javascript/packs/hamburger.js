var content = document.querySelector('#hamburger-content');
var sidebarBody = document.querySelector('#hamburger-sidebar-body');
var button = document.querySelector('#hamburger-button');
var closed = document.querySelector('#closed-button');
var activatedClass = 'hamburger-activated';
var hamburger = document.querySelector('#hamburger');

sidebarBody.innerHTML = content.innerHTML;

button.addEventListener('click', function(e) {
  e.preventDefault();

  this.parentNode.classList.add(activatedClass);
});

closed.addEventListener('click', function(e) {

  e.preventDefault();

  hamburger.classList.remove(activatedClass);
});