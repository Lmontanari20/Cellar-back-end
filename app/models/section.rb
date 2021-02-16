class Section < ApplicationRecord
  belongs_to :cellar
  has_many :bottles
  belongs_to :user
end
