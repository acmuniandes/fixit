json.array!(@damages) do |damage|
  json.extract! damage, :type, :details, :url, :location
  json.url damage_url(damage, format: :json)
end
