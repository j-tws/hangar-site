class Eatery < ApplicationRecord
    has_many :bookings
    has_and_belongs_to_many :eatery_types
    belongs_to :user, optional: true
    belongs_to :state, optional: true

    validates :name, presence: true
    validates :location, presence: true
    validates :cuisine, presence: true
    validates :price_range, presence: true
    validates :description, presence: true
    validates :image, presence: true

end
