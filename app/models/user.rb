class User < ApplicationRecord

    validates :name, length: { minimum: 3}

    validates :email, presence: true, uniqueness: true

    has_secure_password

    has_many :bookings
    has_many :eateries
    has_many :enquiries
    
end
