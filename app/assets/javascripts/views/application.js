define([
  'jquery',
  'underscore',
  'backbone',
  'text!templates/application.html'
], function($, _, Backbone, ApplicationTemplate) {

  return Backbone.View.extend({
    el: "body",
    initialize: function() {
      this.render()
    },
    render: function() {
      this.template = _.template(ApplicationTemplate);
      this.$el.html(this.template);
    }
  });
});