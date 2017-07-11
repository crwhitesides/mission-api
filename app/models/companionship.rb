class Companionship < ApplicationRecord
  belongs_to :mission
  belongs_to :area
  has_many :missionaries
end
