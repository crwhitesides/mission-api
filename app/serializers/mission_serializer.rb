class MissionSerializer < ActiveModel::Serializer
  has_many :zones
  has_many :districts, through: :zones

  attributes :id, :name
end
