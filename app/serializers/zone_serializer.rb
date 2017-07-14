class ZoneSerializer < ActiveModel::Serializer
  attributes :id, :name, :mission_id

  belongs_to :mission
  has_many :districts
end
