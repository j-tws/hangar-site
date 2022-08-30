class AddResponseToEnquiries < ActiveRecord::Migration[5.2]
  def change
    add_column :enquiries, :response, :text
  end
end
