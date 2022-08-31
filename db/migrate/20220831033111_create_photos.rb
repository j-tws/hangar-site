class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :name
      t.text :url
      t.text :description
      t.integer :eatery_id

      t.timestamps
    end
  end
end
