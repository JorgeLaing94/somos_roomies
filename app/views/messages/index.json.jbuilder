json.array!(@messages) do |message|
  json.extract! message, :id, :sender, :subject, :text
  json.url message_url(message, format: :json)
end
