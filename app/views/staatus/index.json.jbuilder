json.array!(@staatus) do |staatu|
  json.extract! staatu, :id, :name, :content
  json.url staatu_url(staatu, format: :json)
end
