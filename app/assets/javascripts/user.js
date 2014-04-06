var ready;

ready = function() {
 $('#tokenfield').tokenfield({});

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
//$(document).on('page:load', ready);
