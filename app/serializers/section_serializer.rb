class SectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :rows, :columns, :x, :y, :cellar_id
  has_many :bottles
  
end
