class Address < ApplicationRecord
  belongs_to :location
  validates :zip, length: { is: 5 }, numericality: true
end
