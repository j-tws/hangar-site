class Eatery < ApplicationRecord
    has_many :bookings
    has_and_belongs_to_many :eatery_types
end
