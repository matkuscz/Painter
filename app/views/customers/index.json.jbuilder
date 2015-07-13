json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :web, :fax, :address_id_id, :address
  json.url customer_url(customer, format: :json)
end
