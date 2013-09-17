class Expense < ActiveRecord::Base
	
	has_one :category
	has_one :beneficiary
	has_one :payement_method

	validates :title, presence: true	
	validates :buying_date, presence: true
	validates :paying_date, presence: true

end
