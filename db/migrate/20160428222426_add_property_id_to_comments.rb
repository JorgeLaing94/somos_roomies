class AddPropertyIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :property_id, :integer
  end
end
