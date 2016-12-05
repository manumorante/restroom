// Load content
function init() {
  myLoad('#header', 'header');
  myLoad('#footer', 'footer');
  goSection('home');
  initNavigation();
}

function goSection(seccion) {
  myLoad('#content', seccion);
}

function myLoad(wrapper, seccion) {
  $(wrapper).load('includes/'+ seccion + '.html');
}

// Navigation
function initNavigation(){
  $('.js-go-section').live('click', function() {
    goSection($(this).attr('href').replace('#', ''));
  });
}