define([
  'underscore',
  'backbone'
], function(_, Backbone){
  return Backbone.Model.extend({
    urlRoot: "/tests",
    defaults: {
      image: "",
      name: "",
      brief: "",
      levels: []
    }
  });
});