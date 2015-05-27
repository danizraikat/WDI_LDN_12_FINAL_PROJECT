json.array!(@question_plays) do |question_play|
  json.extract! question_play, :id, :user_id, :question_id, :answer_id, :level_play_id, :score
  json.url question_play_url(question_play, format: :json)
end
