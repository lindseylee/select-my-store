
// var input = $( "form input:radio" )
//   $(".femalebutton").click(function(){
//   $(Style.sex["male"]).hide();
//   });
//   $(".femalebutton").click(function(){
//   $(Style.sex["female"]).show();
//   });
//   $(".malebutton").click(function(){
//   $(Style.sex["female"]).hife();
//   });
//   $(".malebutton").click(function(){
//   $(Style.sex["male"]).show();
//   });
// });

//         $('input[type="radio"]').click(function(){
//             if($(this).attr("value")=="female"){
//                 $(Style.sex["male"]).hide();
//                 $(Style.sex["female"]).show();
//             }
//             if($(this).attr("value")=="male"){
//                 $(Style.sex["female"]).hide();
//                 $(Style.sex["male"]).show();
//             }
//         });
//     });
// </script>

$(document).ready(function() {
    var $isotopeContainer = $('.styles-container');
    $isotopeContainer.isotope({
        itemSelector: '.style-button',
        layoutMode: 'masonry'
    });

    $('.radiobuttons input[type="radio"]').on('change', function(){

        if(this.checked && $(this).attr("value") == "female") {
            $isotopeContainer.isotope({
                filter: '.female'
            });
        } else {
            $isotopeContainer.isotope({
                filter: '.male'
            });
        }
    });
})

 


