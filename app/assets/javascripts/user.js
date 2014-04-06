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


  if(! $('#tokenfield-tokenfield').length){

   $('#tokenfield')
   .on('tokenfield:createtoken', function (e) {
    $('div.row.connection').shuffle();
  })
   .tokenfield({});

   $('#tokenfield-profile').tokenfield({
    typeahead: {
      source: company_engine.ttAdapter()
    },
    tokens: ['Google', 'Facebook', 'Apple', 'Coinbase'],
    limit: 5
  });


 }


 $('.fa-envelope-o.fa-2x').click(function(){
  var name = $(this).parent().parent().find('h4.name').text();

  $('#myModal h4').text("Send a Message to " + name);
  $('#myModal').modal();
});

 $('#sendMail').click(function(){
  $('#myModal').modal('hide');
  $('#successModal').modal();

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
$(document).on('ready', ready);


(function($){

  $.fn.shuffle = function() {

    var allElems = this.get(),
    getRandom = function(max) {
      return Math.floor(Math.random() * max);
    },
    shuffled = $.map(allElems, function(){
      var random = getRandom(allElems.length),
      randEl = $(allElems[random]).clone(true)[0];
      allElems.splice(random, 1);
      return randEl;
    });

    this.each(function(i){
      $(this).replaceWith($(shuffled[i]));
    });

    return $(shuffled);

  };

})(jQuery);

