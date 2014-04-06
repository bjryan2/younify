var ready;


ready = function() {


  var company_engine = new Bloodhound({
    local: [{value: 'Coinbase'}, {value: 'Apple'}, {value: 'Google'} , {value: 'Facebook'}, {value: 'Belly'}, {value: 'Blotcher'}, {value: 'Snapchat'}, {value: 'Tinder'}, {value: 'Firebase'}],
    datumTokenizer: function(d) {
      return Bloodhound.tokenizers.whitespace(d.value);
    },
    queryTokenizer: Bloodhound.tokenizers.whitespace
  });

  company_engine.initialize();

  $('#tokenfield-typeahead').tokenfield({});



  $('#tokenfield').tokenfield({});

  $('#tokenfield-profile').tokenfield({
    typeahead: {
      source: company_engine.ttAdapter()
    },
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

$(document).on('page:load', ready);
