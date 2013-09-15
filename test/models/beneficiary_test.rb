require 'test_helper'

class BeneficiaryTest < ActiveSupport::TestCase
	fixtures :beneficiaries

  test "the truth" do
    assert true
  end
  
  test "Beneficiary title shoudn't be empty" do
  	beneficiary = Beneficiary.new
  	
  	assert beneficiary.invalid?
  	assert beneficiary.errors[:title].any?
  end
  
  test "Beneficiary title should be unique" do
  	beneficiary = Beneficiary.new(title:	beneficiaries(:one).title)
  	assert !beneficiary.save
 		#FIXME check error message
  end
  
  test "Beneficiary title valid" do
  	beneficiary = Beneficiary.new(title: "Valid beneficiary")
  	assert beneficiary.valid?
  end
end
