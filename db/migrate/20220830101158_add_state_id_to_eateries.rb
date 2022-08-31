class AddStateIdToEateries < ActiveRecord::Migration[5.2]
  def change
    add_column :eateries, :state_id, :integer
  end
end
