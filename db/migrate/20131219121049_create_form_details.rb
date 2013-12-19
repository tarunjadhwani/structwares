class CreateFormDetails < ActiveRecord::Migration
  def change
    create_table :form_details do |t|
      t.string :name
      t.string :bank
      t.integer :ref_no
      t.string :location
      t.string :valuation_place
      t.string :type_of_valuation
      t.integer :flat_no
      t.date :site_visit_date
      t.string :ownership
      t.integer :valuation_rate
      t.integer :area_sq_mtrs

      t.timestamps
    end
  end
end
