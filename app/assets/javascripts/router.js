define([
  'jquery',
  'underscore',
  'backbone',
  'views/tests/index'
], function($, _, Backbone, TestsIndexView){

  var Router = Backbone.Router.extend({
    routes: {
      ''               : 'home',
      'tests'          : 'testsIndex',
      '*actions'       : 'defaultAction'
    }
  });

  var initialize = function() {
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