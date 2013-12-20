class FormDetail < ActiveRecord::Base
	belongs_to :user
	cattr_accessor :disable_button
	@@disable_button = false
end
