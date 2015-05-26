json.array!(@level_plays) do |level_play|
  json.extract! level_play, :id, :user_id, :level_id, :max_score, :score
  json.url level_play_url(level_play, format: :json)
end
