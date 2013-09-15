json.array!(@payement_methods) do |payement_method|
  json.extract! payement_method, :title
  json.url payement_method_url(payement_method, format: :json)
end
