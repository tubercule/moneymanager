require 'test_helper'

class PayementMethodTest < ActiveSupport::TestCase
  
  test "the truth" do
    assert true
  end
  
  test "PaymentMethod title shouldn't be empty" do
  	payement_method = PayementMethod.new
  	assert payement_method.invalid?
  	assert payement_method.errors[:title].any?
  end
  
  test "PaymentMethod title should be unique" do
  	payement_method = PayementMethod.new(title:	payement_methods(:one).title)
  	assert !payement_method.save
 		#FIXME check error message
  end
  
  test "PaymentMethod title valid" do
  	payement_method = PayementMethod.new(title: "Valid payement method")
  	assert payement_method.valid?
  end
  
end
