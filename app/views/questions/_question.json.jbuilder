json.extract! question, :id, :content, :asked_by, :priority, :created_at, :updated_at
json.url question_url(question, format: :json)
