json.array!(@guests) do |guest|
  json.extract! guest, :id, :name, :message
  json.url guest_url(guest, format: :json)
end
