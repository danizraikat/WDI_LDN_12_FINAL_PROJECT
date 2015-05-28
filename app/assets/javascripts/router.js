define([
  'jquery',
  'underscore',
  'backbone',
  'views/application',
  'views/tests/index'
], function($, _, Backbone, ApplicationView, TestsIndexView){

  var layout = function(){
    new ApplicationView().render();
  }

  var Router = Backbone.Router.extend({
    routes: {
      ''               : 'home',
      'tests'          : 'testsIndex',
      '*actions'       : 'defaultAction'
    }
  });

  var initialize = function() {
    layout(); 

    var router = new Router;

    router.on('route:home', function(){
      console.log("Home");
    });

    router.on('route:testsIndex', function(){
      console.log("Tests Index");
      new TestsIndexView();
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