class Section < ApplicationRecord
  belongs_to :cellar
  has_many :bottles
  has_many :wines, through: :bottles
  belongs_to :user
end
