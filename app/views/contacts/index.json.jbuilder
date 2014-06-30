json.array!(@contacts) do |contact|
  json.extract! contact, :id, :band, :mode, :callsign, :classification, :section, :note
  json.url contact_url(contact, format: :json)
end
