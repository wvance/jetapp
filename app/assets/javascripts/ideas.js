$(function () {
  var depthClass = ["z-depth-1", "z-depth-2", "z-depth-3", "z-depth-4", "z-depth-5"];

  $(".randomDepth").each(function(){
      $(this).addClass(depthClass[~~(Math.random()*depthClass.length)]);
  });

  // USED TO CHANGE CARD DEPTH ON HOVER
  $(".hoverDepth").mouseenter(function() {
    $(this).addClass(depthClass[1]);
  }).mouseleave(function() {
    $(this).removeClass(depthClass[1])
  });

  $('.modal-trigger').leanModal();
});


$(document).ready(function(){
  $('.tooltipped').tooltip({delay: 50});
});
    