json.array!(@tests) do |test|
  json.extract! test, :id, :image, :name, :brief
  json.url test_url(test, format: :json)
end
