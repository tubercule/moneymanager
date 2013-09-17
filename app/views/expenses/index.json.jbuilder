json.array!(@expenses) do |expense|
  json.extract! expense, :title, :buying_date, :paying_date, :category_id, :beneficiary_id, :payement_method_id
  json.url expense_url(expense, format: :json)
end
