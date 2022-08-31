class Photo < ApplicationRecord
    belongs_to :eatery, optional: true
end
