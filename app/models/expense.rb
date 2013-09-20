class Expense < ActiveRecord::Base
	
	has_one :category
	has_one :beneficiary
	has_one :payment_method

	validates :title, presence: true	
	validates :buying_date, presence: true
	validates :paying_date, presence: true
	validates :category_id, presence: true
	validates :beneficiary_id, presence: true
	validates	:payment_method_id, presence: true
	validates	:value, presence: true, numericality: { :greater_than_or_equal_to => 0, only_integer: true }
end
