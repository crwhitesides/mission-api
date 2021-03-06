class Mission < ApplicationRecord
  has_many :zones
  has_many :districts, through: :zones
  has_many :areas, through: :districts
  has_many :companionships, through: :areas
  has_many :missionaries, through: :companionships
end
