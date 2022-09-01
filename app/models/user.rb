class User < ApplicationRecord

    has_secure_password

    has_many :bookings
    has_many :eateries
    has_many :enquiries

    validates :name, presence: true, length: { minimum: 3}

    validates :email, presence: true, uniqueness: true

    validates :password, presence: true

    validates :image, presence: true

    # how to give a default profile pic if user dont upload image?
    
    def search_bookings(query)
        self.bookings.where("eatery_name ILIKE ?", "%#{query}%")
    end

end
