define([
  'jquery',
  'underscore',
  'backbone',
  'collections/tests',
  'text!templates/tests/index.html'
], function($, _, Backbone, TestsCollection, TestsTemplate) {

  var TestsIndexView = Backbone.View.extend({
    el: 'main',
    initialize: function() {
      var self = this;
      var collection = new TestsCollection();
      var data = collection.fetch({
        success: function(data) {
          self.render(data)
        }
      });
    },
    render: function(data){
      var template = _.template(TestsTemplate);
      this.$el.html(template({tests: data.models}));
    }
  });

  return TestsIndexView;
});