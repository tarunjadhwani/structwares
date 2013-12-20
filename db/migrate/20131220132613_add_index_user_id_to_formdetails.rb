class AddIndexUserIdToFormdetails < ActiveRecord::Migration
  def change
  	add_index :form_details, :user_id
  end
end
