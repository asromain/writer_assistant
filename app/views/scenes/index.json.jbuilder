json.array!(@scenes) do |scene|
  json.extract! scene, :id, :name, :narrative, :place, :period, :chapter_id
  json.url scene_url(scene, format: :json)
end
