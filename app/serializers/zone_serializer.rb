class ZoneSerializer < ActiveModel::Serializer
  belongs_to :mission
  has_many :districts
  
  attributes :id, :name, :mission_id
end
