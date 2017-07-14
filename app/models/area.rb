class Area < ApplicationRecord
  belongs_to :district
  has_many :companionships
  has_many :missionaries, through: :companionships
end
