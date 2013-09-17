class PayementMethod < ActiveRecord::Base
	
	has_many :expenses
	before_destroy :ensure_not_referenced_by_any_expense
	
	validates :title, presence: true, uniqueness: true

	private
		# Ensure that there is no expenses referencing this payment_method
		def ensure_not_referenced_by_any_expense
			if expenses.empty?
				return true
			else
				errors.add(:base, 'Expense present')
				return false
			end
		end
end
