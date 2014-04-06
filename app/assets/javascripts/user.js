var ready;

ready = function() {
 $('#tokenfield').tokenfield({});

 $('#tokenfield-profile').tokenfield({
  tokens: ['Google', 'Facebook', 'Apple', 'Coinbase'],
  limit: 5
 });

 $('.fa-envelope-o.fa-2x').click(function(){


  var name = $(this).parent().parent().find('h4.name').text();

  $('#myModal h4').text("Send a Message to " + name);
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
