class District < ApplicationRecord
  belongs_to :zone
  has_many :areas
end
