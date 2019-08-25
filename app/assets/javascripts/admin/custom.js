$(document).ready(function() {
  setInterval(function(){
    $('.flashing').toggleClass('btn-danger');
  }, 1000);
});