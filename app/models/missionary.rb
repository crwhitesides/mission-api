class Missionary < ApplicationRecord
  has_many :companionships
  has_many :areas, through: :companionships
end
