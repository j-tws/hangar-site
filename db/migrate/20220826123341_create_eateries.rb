class CreateEateries < ActiveRecord::Migration[5.2]
  def change
    create_table :eateries do |t|
      t.string :name
      t.string :cuisine
      t.string :location
      t.integer :price_range
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
