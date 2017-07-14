class District < ApplicationRecord
  belongs_to :zone
  has_many :areas
  has_many :companionships, through: :areas
  has_many :missionaries, through: :companionships
end
