class Address < ApplicationRecord
    belongs_to :Account, optional: true
    validates :street_name, :street_number, :city, :state, :zip
end
