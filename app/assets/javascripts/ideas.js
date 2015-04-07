$(function () {
  var depthClass = ["z-depth-1", "z-depth-2", "z-depth-3", "z-depth-4", "z-depth-5"];

    $(".randomDepth").each(function(){
        $(this).addClass(depthClass[~~(Math.random()*depthClass.length)]);
    });
});
