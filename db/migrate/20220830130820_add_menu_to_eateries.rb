class AddMenuToEateries < ActiveRecord::Migration[5.2]
  def change
    add_column :eateries, :menu, :text
  end
end
