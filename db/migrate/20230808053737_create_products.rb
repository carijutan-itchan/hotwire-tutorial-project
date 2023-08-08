class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :description
      t.decimal :price, precision: 5, scale: 2
      t.string :name

      t.timestamps
    end
  end
end
