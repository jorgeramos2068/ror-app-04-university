document.addEventListener('DOMContentLoaded', function() {
  let elems = document.querySelectorAll('.sidenav');
  let instances = M.Sidenav.init(elems);
});

document.addEventListener('DOMContentLoaded', function() {
  let elems = document.querySelectorAll('.dropdown-trigger');
  let instances = M.Dropdown.init(elems);
});

/**
 * On document load
 */
$(document).on('turbolinks:load', function() {
  $('#fade-out-target').fadeOut(4000);
});