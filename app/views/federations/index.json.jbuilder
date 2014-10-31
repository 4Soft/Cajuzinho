json.array!(@federations) do |federation|
  json.extract! federation, :id
  json.url federation_url(federation, format: :json)
end
