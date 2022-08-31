class Enquiry < ApplicationRecord
    belongs_to :user, optional: true
    validates :query, presence: true, length: {minimum: 5}

end
