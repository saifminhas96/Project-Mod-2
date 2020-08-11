class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer :restaurant_id
      t.string :image

      t.timestamps
    end
  end
end
