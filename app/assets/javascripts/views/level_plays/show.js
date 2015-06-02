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
          // self.question.set({level_id:
          //   LevelPlayData.get("levels")[0].id}),      

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
    
    render: function(level, question, answer) {
      var template = _.template(LevelPlayTemplate);
      this.$el.html(template({ 
        level_play: this.level_play, 
        question: this.question, 
        answer: this.answer 
      }));
    },

    events: {
      "click .delete": "delete",
      "click .submit": "createQuestionPlay"
    },
                                          
    delete: function(ev){
      ev.preventDefault();
      this.level_play.destroy({
        success: function() {
          Backbone.history.navigate('level_plays', true);
        }
      });
    },

    createQuestionPlay: function(ev){
      ev.preventDefault();

      var currentQuestionId = $(ev.currentTarget).data("question-id");
      var selected = $("input[data-question-id="+currentQuestionId+"][type=radio]:checked")
      
      $.ajax({
        type: "POST",
        url: "/question_plays",
        data: { question_play: { 
          question_id: $(selected).data("question"), 
          answer_id: $(selected).val(),
          level_play_id: $(selected).data("level_play")
        }}
      }).done(function(data){
        console.log(data);
      })
    }
  });

  return LevelPlaysShowView;
});