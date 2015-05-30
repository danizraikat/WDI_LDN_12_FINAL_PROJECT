define([
  'underscore',
  'backbone',
  'models/question'
], function(_, Backbone, Question){

  return Backbone.Collection.extend({
    model: Question,
    url: "/questions.json"
  });

});