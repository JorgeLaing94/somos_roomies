class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.string :city
      t.integer :price
      t.string :address

      t.timestamps null: false
    end
  end
end
