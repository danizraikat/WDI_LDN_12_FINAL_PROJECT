require.config({
  paths: {
    jquery: 'lib/jquery',
    underscore: 'lib/underscore',
    backbone: 'lib/backbone',
    text: 'lib/text'
  }
});

require([
  'app',
], function(App){
  if ($('main').length > 0) {
    App.initialize();
  }
});

// $(function(){ $(document).foundation(); });