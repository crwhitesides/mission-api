class Zone < ApplicationRecord
  belongs_to :mission
  has_many :districts
  has_many :areas, through: :districts
  has_many :companionships, through: :areas
  has_many :missionaries, through: :companionships
end
