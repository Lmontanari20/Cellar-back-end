class Wine < ApplicationRecord
    has_many :bottles, dependent: :destroy
end
