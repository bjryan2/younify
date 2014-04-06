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
  }).tokenfield({});
 $('.fa-envelope-o.fa-2x').click(function(){
  $('#myModal').modal();
});


//editable text form code


$('.bio-text').editable('http://www.example.com/save.php', {
 id   : 'elementid',
 name : 'newvalue'
});

$('.goals-text').editable('http://www.example.com/save.php', {
 id   : 'elementid',
 name : 'newvalue'
});

$('.edu-text').editable('http://www.example.com/save.php', {
 id   : 'elementid',
 name : 'newvalue'
});

};

$(document).ready(ready);
$(document).on('page:load', ready);
