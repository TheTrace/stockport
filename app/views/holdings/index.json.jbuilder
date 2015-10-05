json.array!(@holdings) do |holding|
  json.extract! holding, :id, :trans_type, :trans_date, :company_id, :quantity
  json.url holding_url(holding, format: :json)
end
