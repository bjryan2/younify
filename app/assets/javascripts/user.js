$(document).ready(function(){

  $('#tokenfield')
  .on('tokenfield:preparetoken', function (e) {
    //cycle through classes for
    var classes = ['red', 'blue', 'teal', 'green'];

    var str = classes[Math.floor(Math.random()*classes.length)];
    console.log(e.relatedTarget);
    console.log(e);
    $('#tokenfield').children('.token').last().addClass(str);
  })
  .tokenfield({

    allowDuplicates: false,
    limit: 10,
    minLength: 2,
    maxLength: 15,

  });

});
