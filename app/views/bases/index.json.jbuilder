json.array!(@bases) do |basis|
  json.extract! basis, :id
  json.url basis_url(basis, format: :json)
end
