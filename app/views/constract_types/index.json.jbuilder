json.array!(@constract_types) do |constract_type|
  json.extract! constract_type, :id, :contract_type
  json.url constract_type_url(constract_type, format: :json)
end
