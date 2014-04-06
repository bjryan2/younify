var ready;
ready = function() {
 $('#tokenfield')
  .on('tokenfield:preparetoken', function (e) {
    //cycle through classes for
    var classes = ['red', 'blue', 'teal', 'green'];

    var str = classes[Math.floor(Math.random()*classes.length)];
    
    //console.log(e.relatedTarget);
    //console.log(e);
    $('#tokenfield').children('.token').last().addClass(str);
  })
 $('.fa-envelope-o.fa-2x').click(function(){
    $('#myModal').modal();
  });


};

$(document).ready(ready);
$(document).on('page:load', ready);
