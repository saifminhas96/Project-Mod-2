class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :restaurant_id
      t.string :date 

      t.timestamps
    end
  end
end
