json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :skill, :birthday, :photo
  json.url contact_url(contact, format: :json)
end
