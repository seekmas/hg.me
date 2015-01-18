json.array!(@subjects) do |subject|
  json.extract! subject, :id, :photo, :description, :user_id, :topic_id
  json.url subject_url(subject, format: :json)
end
