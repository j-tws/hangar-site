class Booking < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :eatery, optional: true

    validates :people_number, presence: true
    validates :phone, presence: true
    validates :email, presence: true
    validates :time, presence: true

   

end
