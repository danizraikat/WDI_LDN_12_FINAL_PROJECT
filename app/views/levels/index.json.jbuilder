json.array!(@levels) do |level|
  json.extract! level, :id, :test_id, :title, :brief
  json.url level_url(level, format: :json)
end
