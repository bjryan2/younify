$(document).ready(function(){

  $('#tokenfield')
  .tokenfield({

    allowDuplicates: false,
    limit: 10,
    minLength: 2,
    maxLength: 15,

  });

});
