class AddIndexUserIdToFormdetails < ActiveRecord::Migration
  def change
  	add_column :form_details, :user_id, :integer
  	add_index :form_details, [:user_id]
  end
end
