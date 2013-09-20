class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :title
      t.date :buying_date
      t.date :paying_date
      t.integer :category_id
      t.integer :beneficiary_id
      t.integer :payment_method_id
      t.integer	:value

      t.timestamps
    end
  end
end
