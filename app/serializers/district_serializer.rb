class DistrictSerializer < ActiveModel::Serializer
  attributes :id, :name, :zone_id

  belongs_to :zone
end
