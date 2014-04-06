

var ready;
ready = function() {
 $('#tokenfield')
 .tokenfield({

  allowDuplicates: false,
  limit: 10,
  minLength: 2,
  maxLength: 15,

});


};

$(document).ready(ready);
$(document).on('page:load', ready);