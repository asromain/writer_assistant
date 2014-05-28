json.array!(@characters) do |character|
  json.extract! character, :id, :name, :role, :scene_id
  json.url character_url(character, format: :json)
end
