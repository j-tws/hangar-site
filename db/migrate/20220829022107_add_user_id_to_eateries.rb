class AddUserIdToEateries < ActiveRecord::Migration[5.2]
  def change
    add_column :eateries, :user_id, :integer
  end
end
