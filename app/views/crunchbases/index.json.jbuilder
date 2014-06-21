json.array!(@crunchbases) do |crunchbasis|
  json.extract! crunchbasis, :id
  json.url crunchbasis_url(crunchbasis, format: :json)
end
