class Section < ApplicationRecord
  belongs_to :cellar
  has_many :bottles
end
