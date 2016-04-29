class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :description

      t.timestamps null: false
    end
    add_attachment :photos, :photo
  end
end
