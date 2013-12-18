class AddCompanyNameIndexToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :company_name, :string
  	add_index :users, :email, unique: true
  end
end
