define([
  'underscore',
  'backbone'
], function(_, Backbone){
  return Backbone.Model.extend({
    urlRoot: "/level_plays",
    defaults: {
      user_id: "",
      level_id: "",
      score: "",
      question_plays: [],
      questions: [],
      answers: []       
    }
  });
});