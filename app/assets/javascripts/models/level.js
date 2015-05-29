define([
  'underscore',
  'backbone'
], function(_, Backbone){
  return Backbone.Model.extend({
    urlRoot: "/levels",
    defaults: {
      test_id: null,
      title: "",
      brief: ""
    }
  });
});