// here we need to fetch test and level data and level-play

define([
  'jquery',
  'underscore',
  'backbone',
  'models/test',
  'models/level_play',
  'text!templates/tests/show.html'
], function($, _, Backbone, Test, LevelPlay, TestTemplate) {

  var TestsShowView = Backbone.View.extend({
    el: 'main',
    initialize:function(id){
      var self = this;
      this.test = new Test({id: id});
      this.level_play = new LevelPlay({id: id});
      this.test.fetch({
        success: function(TestData) {
          self.level_play.set({level_id: 
            TestData.get("levels")[0].id}) 
          self.level_play.fetch({
            success: function(LevelPlayData){
              self.render(TestData, LevelPlayData);
            }
          })
        }
      });     
    },
    render: function(test, level_play) {
      var template = _.template(TestTemplate);
      this.$el.html(template({ test: test, level_play: level_play }));
      return this;
    },

    events: {
      "click .delete": "delete",
      "click .play"  : "createLevelPlay"
    },

    delete: function(event){
      event.preventDefault();
      this.test.destroy({
        success: function() {
          Backbone.history.navigate('tests', true);
        }
      });
    },

    createLevelPlay: function(event) {
      event.preventDefault();
      var level_id = $(event.currentTarget).data("id");
      $.ajax({
        type: "POST",
        url: "/level_plays",
        data: {
          level_play: {
            level_id: level_id,
            test_id: this.test.get("id"),
          }
        }
      }).done(function(data){
        Backbone.history.navigate('level_plays/'+data.id, true);
      });
    }



  });

  return TestsShowView;
});