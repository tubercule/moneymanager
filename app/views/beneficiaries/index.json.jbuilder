json.array!(@beneficiaries) do |beneficiary|
  json.extract! beneficiary, :title
  json.url beneficiary_url(beneficiary, format: :json)
end
