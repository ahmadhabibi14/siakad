var menuList = document.querySelectorAll('#menu_list > a');
var bMenuList = document.querySelectorAll('#b-menu_list > a');

menuList.forEach(function(link) {
  if (link.getAttribute('href') === window.location.pathname) {
      link.classList.add('bg-primary__light');
  }
});

bMenuList.forEach(function(link) {
  if (link.getAttribute('href') === window.location.pathname) {
      link.classList.add('bg-primary__light');
  }
});