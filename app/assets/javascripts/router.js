define([
  'jquery',
  'underscore',
  'backbone',
  'views/application',
], function($, _, Backbone, ApplicationView){

  var layout = function(){
    new ApplicationView().render();
  }

  var Router = Backbone.Router.extend({
    routes: {
      ''               : 'home',
      '*actions'       : 'defaultAction'
    }
  });

  var initialize = function() {
    layout(); 

    var router = new Router;

    router.on('route:home', function(){
      console.log("Home");
    });



    router.on('route:defaultAction', function(actions) {
      console.log('No route:', actions);
    });

    Backbone.history.start();
  }

  return {
    initialize: initialize
  }
});