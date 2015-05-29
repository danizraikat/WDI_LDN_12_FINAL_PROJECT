define([
  'jquery',
  'underscore',
  'backbone',
  'models/test',
  'text!templates/tests/show.html'
], function($, _, Backbone, Test, TestTemplate) {

  var TestsShowView = Backbone.View.extend({
    el: 'main',
    initialize:function(id){
      var self = this;
      this.test = new Test({id: id});
      this.test.fetch({
        success: function(data) {
          self.render(data);
          console.log(data)
        }
      })
    },
    render: function(data) {
      var template = _.template(TestTemplate);
      this.$el.html(template({ test: data }));
    },

    events: {
      "click .delete": "delete"
    },

    delete: function(ev){
      ev.preventDefault();
      this.test.destroy({
        success: function() {
          Backbone.history.navigate('mathqs', true);
        }
      });
    }
  });

  return TestsShowView;
});