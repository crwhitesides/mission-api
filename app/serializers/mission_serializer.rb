class MissionSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :zones
  has_many :districts, through: :zones
end
