class CreateEateriesEateryTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :eateries_eatery_types do |t|
      t.integer :eatery_id
      t.integer :eatery_type_id
    end
  end
end
