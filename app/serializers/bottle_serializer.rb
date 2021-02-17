class BottleSerializer < ActiveModel::Serializer
  attributes :id, :price, :row, :column, :size
  belongs_to :wine
end
