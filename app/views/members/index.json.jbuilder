json.array!(@members) do |member|
  json.extract! member, :id, :role
  json.url member_url(member, format: :json)
end
