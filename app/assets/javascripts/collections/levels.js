define([
  'underscore',
  'backbone',
  'models/level'
], function(_, Backbone, Level){

  return Backbone.Collection.extend({
    model: Levels,
    url: "/levels.json"
  });

});