importConnections = {
  request: function(){
    var url = '/import_data/request';

    $.ajax({
      type: 'GET',
      dataType: 'JSON',
      url: url,
      success: function(data){
        //importConnections.appendRequestFrame(data);
        console.log('success!');
        console.log(data);
      }
    });
  },

  appendRequestFrame: function(url){
    window.open(url, '_blank', "width=400,height=500,scrollbars=no,location=no,status=no,titlebar=no, left=500, top=150");
  }
}