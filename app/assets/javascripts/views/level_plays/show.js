//here we need to fetch level-play, question play, question and answer data

define([
  'jquery',
  'underscore',
  'backbone',
  'models/level_play',
  'models/question',
  'models/answer',
  'text!templates/level_plays/show.html'
], function($, _, Backbone, LevelPlay, Question, Answer, LevelPlayTemplate) {

  var LevelPlaysShowView = Backbone.View.extend({
    el: 'main',
    initialize:function(id){
      var self = this;

      this.level_play = new LevelPlay({id: id});
      this.question = new Question({id: id});
      this.answer = new Answer({id: id});

      this.level_play.fetch({
        success: function(LevelPlayData) {
          self.question.set({level_play_id:
            LevelPlayData.get("level_plays")[0].id}),
          self.question.fetch({
            success: function(QuestionData){
              self.render(LevelPlayData, QuestionData)}
            }),
          self.answer.fetch({
            success: function(AnswerData){
              self.render(LevelPlayData, AnswerData)}
          })
        }
      })
    },
    render: function(level_play, question, answer) {
      var template = _.template(LevelPlayTemplate);
      this.$el.html(template({ level_play: level_play, question: question, answer: answer }));
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