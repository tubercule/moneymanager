require 'test_helper'

class PaymentMethodTest < ActiveSupport::TestCase
  
  test "the truth" do
    assert true
  end
  
  test "PaymentMethod title shouldn't be empty" do
  	payment_method = PaymentMethod.new
  	assert payment_method.invalid?
  	assert payment_method.errors[:title].any?
  end
  
  test "PaymentMethod title should be unique" do
  	payment_method = PaymentMethod.new(title:	payment_methods(:one).title)
  	assert !payment_method.save
 		#FIXME check error message
  end
  
  test "PaymentMethod title valid" do
  	payment_method = PaymentMethod.new(title: "Valid payment method")
  	assert payment_method.valid?
  end
  
end
