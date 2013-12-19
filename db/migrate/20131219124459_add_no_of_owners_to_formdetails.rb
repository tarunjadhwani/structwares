class AddNoOfOwnersToFormdetails < ActiveRecord::Migration
  def change
  	add_column :form_details, :no_of_owners, :integer
  end
end
