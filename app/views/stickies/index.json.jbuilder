json.array!(@stickies) do |sticky|
  json.extract! sticky, :id, :body, :author_id, :section, :stage
  json.url sticky_url(sticky, format: :json)
end
