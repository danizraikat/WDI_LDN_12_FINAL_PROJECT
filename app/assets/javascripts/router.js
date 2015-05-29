define([
  'jquery',
  'underscore',
  'backbone',
  'views/tests/index',
  'views/tests/show'
], function($, _, Backbone, TestsIndexView, TestsShowView){

  var Router = Backbone.Router.extend({
    routes: {
      ''               : 'home',
      'tests'          : 'testsIndex',
      'tests/:id'      : 'testsShow',
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

    router.on('route:testsShow', function(){
      console.log("Tests Show");
      new TestsShowView();
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