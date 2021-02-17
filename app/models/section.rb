class Section < ApplicationRecord
  belongs_to :cellar
  has_many :bottles, dependent: :destroy
  has_many :wines, through: :bottles
end
