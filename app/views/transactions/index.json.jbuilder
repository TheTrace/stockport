json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :trans_type, :trans_date, :company_id, :quantity
  json.url transaction_url(transaction, format: :json)
end
