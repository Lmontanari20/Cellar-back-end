class BottleSerializer < ActiveModel::Serializer
  attributes :id, :price, :row, :column, :size, :wine
  # belongs_to :wine
end
