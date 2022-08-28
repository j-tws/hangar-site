class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :eatery_name
      t.integer :people_number
      t.string :phone
      t.string :email
      t.datetime :time
      t.integer :user_id
      t.integer :eatery_id

      t.timestamps
    end
  end
end
