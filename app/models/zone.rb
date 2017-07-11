class Zone < ApplicationRecord
  belongs_to :mission
  has_many :districts
  has_many :areas, through: :districts
end
