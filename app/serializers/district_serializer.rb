class DistrictSerializer < ActiveModel::Serializer
  belongs_to :zone

  attributes :id, :name, :zone_id
end
