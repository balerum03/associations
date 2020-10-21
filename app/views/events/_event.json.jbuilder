json.extract! event, :id, :title, :body, :date, :created_at, :updated_at
json.url event_url(event, format: :json)
