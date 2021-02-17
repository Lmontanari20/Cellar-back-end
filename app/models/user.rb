class User < ApplicationRecord
    has_many :cellars, dependent: :destroy
    has_many :sections, through: :cellars
    has_many :bottles, through: :sections
    has_many :wines, through: :bottles
end
