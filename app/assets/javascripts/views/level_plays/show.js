//here we need to fetch level-play, question play, question and answer data

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

      this.level_play = new LevelPlay({id: id});
      this.level_play.fetch({
        success: function(data) {
          self.render(data);
          console.log(data)
        }
      })
    },
    render: function(data) {
      var template = _.template(LevelPlayTemplate);
      this.$el.html(template({ level_play: data }));
    },

    events: {
      "click .delete": "delete"
    },
                                          
    delete: function(ev){
      ev.preventDefault();
      this.level_play.destroy({
        success: function() {
          Backbone.history.navigate('level_plays', true);
        }
      });
    }
  });

  return LevelPlaysShowView;
});