define([
  'jquery',
  'underscore',
  'backbone',
  'views/tests/index',
  'views/tests/show',
  'views/level_plays/show'
], function($, _, Backbone, TestsIndexView, TestsShowView, LevelPlaysShowView){

  var Router = Backbone.Router.extend({
    routes: {
      ''               : 'home',
      'tests'          : 'testsIndex',
      'tests/:id'      : 'testsShow',
      'level_plays/:id': 'levelPlaysShow',
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

    router.on('route:testsShow', function(id){
      console.log("Tests Show");
      new TestsShowView(id);
    });          

    router.on('route:levelPlaysShow', function(id){
      console.log("LevelPlays Show");
      new LevelPlaysShowView(id);
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