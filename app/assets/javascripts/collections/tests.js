define([
  'underscore',
  'backbone',
  'models/test'
], function(_, Backbone, Test){

  return Backbone.Collection.extend({
    model: Test,
    url: "/tests.json"
  });

});