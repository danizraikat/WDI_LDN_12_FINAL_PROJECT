define([
  'jquery',
  'underscore',
  'backbone',
  'models/level_play',
  'text!templates/level_plays/show.html'
], function($, _, Backbone, LevelPlay, LevelPlayTemplate) {

  var LevelPlaysShowView = Backbone.View.extend({
    el: 'main',
    initialize:function(id){
      var self = this;
      this.test = new LevelPlay({id: id});
      this.test.fetch({
        success: function(data) {
          self.render(data);
          console.log(data)
        }
      })
    },
    render: function(data) {
      var template = _.template(LevelPlayTemplate);
      this.$el.html(template({ test: data }));
    },

    events: {
      "click .delete": "delete"
    },

    delete: function(ev){
      ev.preventDefault();
      this.test.destroy({
        success: function() {
          Backbone.history.navigate('level_plays', true);
        }
      });
    }
  });

  return LevelPlaysShowView;
});