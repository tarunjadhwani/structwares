class FormDetail < ActiveRecord::Base
  cattr_accessor :disable_button
  @@disable_button = false
end
