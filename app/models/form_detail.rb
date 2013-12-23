class FormDetail < ActiveRecord::Base

    validates   "owner_name", presence: true
    validates   "valuer_name", presence: true
    validates   "agreed_date", presence: true
    validates  	"ref_no", presence: true
    validates   "bank", presence: true
    validates   "situated_at", presence: true
    validates   "location", presence: true
    validates  	"valuation_place", presence: true
    validates   "area_type", presence: true
    validates   "property_type", presence: true
    validates   "site_visit_date", presence: true
    validates   "ownership", presence: true
    validates  	"valuation_rate", presence: true
    validates  	"build_up_area", presence: true
    
	cattr_accessor :disable_button
	@@disable_button = false
end

