class SectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :rows, :columns, :x, :y
  has_many :bottles
end
