require.config({
  shim: {
    jquery_ujs: ['jquery']
  },
  paths: {
    jquery: 'lib/jquery',
    jquery_ujs: 'lib/jquery_ujs',
    underscore: 'lib/underscore',
    backbone: 'lib/backbone',
    text: 'lib/text'
  }
});

require([
  'app',
  'jquery_ujs'
], function(App, ujs){
  if ($('main').length > 0) {
    App.initialize();
  }
});

// $(function(){ $(document).foundation(); });