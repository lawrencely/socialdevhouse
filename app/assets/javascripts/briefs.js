# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
  $('.bottomBox').on('click', function(){
    console.log('is this working');
    $('bottomBox').addClass('cell2').removeClass('cell1');

  });
});
  // $(Document).ready(function(){
  //   var changedDiv;
  //   function changeBG(theNode){
  //     if (changedDiv){
  //       changedDiv.className = "font-choice";
  //     } else {
  //       var selectedDiv = document.getElementById("active-choice");
  //       if (selectedDiv) {
  //         selectedDiv.className = "font-choice";
  //       }
  //     };
  //
  //     theNode.className = "active-choice";
  //     changedDiv=theNode;
  //   };
  // });
