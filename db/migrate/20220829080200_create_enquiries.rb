class CreateEnquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :enquiries do |t|
      t.text :query
      t.integer :user_id

      t.timestamps
    end
  end
end
