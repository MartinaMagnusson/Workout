$(document).ready(function () {

    $(".LiNavElement")
  .on("mouseenter", function () {
      $(this).css("color", "whitesmoke");
      $(this).css("transition", "0.1s", "ease");


      $(this).children("a").css("color", "black");
      $(this).children("a").css("transition", "0.2s", "ease");

  })
  .on("mouseleave", function () {

      if ((this).class == "current") {
          alert("hej");
      }
      $(this).css("color", "black");
      $(this).css("transition", "0.3s", "ease");
      $(this).children("a").css("color", "orange");
      $(this).children("a").css("transition", "0.3s", "ease");
  });

    

});