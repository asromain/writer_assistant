json.array!(@anecdotes) do |anecdote|
  json.extract! anecdote, :id, :subject, :description, :chapter_id
  json.url anecdote_url(anecdote, format: :json)
end
