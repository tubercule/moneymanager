class CreatePayementMethods < ActiveRecord::Migration
  def change
    create_table :payement_methods do |t|
      t.string :title

      t.timestamps
    end
  end
end
