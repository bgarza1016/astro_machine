class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.integer :price
      t.string :size
      t.string :color
      t.string :components

      t.timestamps null: false
    end
  end
end
