class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :cellars
  has_many :sections, through: :cellars
  has_many :bottles, through: :sections
  has_many :wines, through: :bottles
end
