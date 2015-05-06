json.array!(@messages) do |message|
  json.extract! message, :id, :content, :name
  json.url message_url(message, format: :json)
end
