define([
  'underscore',
  'backbone'
], function(_, Backbone){
  return Backbone.Model.extend({
    urlRoot: "/questions",
    defaults: {
      test_id: "",
      level_id: "",
      level_play_id: "",
      title: "",
      content: "",
      answers: []
    }
  });
});