class Enquiry < ApplicationRecord
    belongs_to :user, optional: true
    validates :query, length: {minimum: 3}

end
