json.extract! question, :id, :topic, :text, :likes, :answered, :created_at, :updated_at
json.url question_url(question, format: :json)
