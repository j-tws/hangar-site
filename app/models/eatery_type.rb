class EateryType < ApplicationRecord
    has_and_belongs_to_many :eateries
end
