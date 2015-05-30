define([
  'underscore',
  'backbone'
], function(_, Backbone){
  return Backbone.Model.extend({
    urlRoot: "/answers",
    defaults: {
      question_id: "",
      title: "",
      content: "",
      correctness: null 
    }
  });
});