json.array!(@contracts) do |contract|
  json.extract! contract, :id, :contract_num, :order_identifier, :review_date, :sample_income_date, :protocole_done_date, :agre_finish_date, :cost, :backup_cost, :back_pay, :fact_netto, :customer_id, :customer, :contract_type_id, :contract_type, :user_id, :user
  json.url contract_url(contract, format: :json)
end
