json.array!(@kontakts) do |kontakt|
  json.extract! kontakt, :id, :jmeno, :prijmeni, :telefon, :adresa
  json.url kontakt_url(kontakt, format: :json)
end
