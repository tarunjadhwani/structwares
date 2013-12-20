class CreateFormDetails < ActiveRecord::Migration
  def change
    create_table :form_details do |t|
      t.string :owner_name
      t.string :valuer_name
      t.date :agreed_date
      t.integer :ref_no
      t.string :bank
      t.string :situated_at
      t.string :location
      t.integer :valuation_place
      t.string :area_type
      t.string :property_type
      t.date :site_visit_date
      t.string :ownership
      t.integer :valuation_rate
      t.integer :build_up_area

      t.timestamps
    end
  end
end
