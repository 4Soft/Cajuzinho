json.array!(@assessors) do |assessor|
  json.extract! assessor, :id, :role
  json.url assessor_url(assessor, format: :json)
end
