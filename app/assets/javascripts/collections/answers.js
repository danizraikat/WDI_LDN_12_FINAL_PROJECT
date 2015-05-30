define([
  'underscore',
  'backbone',
  'models/answers'
], function(_, Backbone, Answer){

  return Backbone.Collection.extend({
    model: Answer,
    url: "/answers.json"   
  });

});