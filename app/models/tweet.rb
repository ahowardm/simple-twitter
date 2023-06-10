class Tweet < ApplicationRecord
    belongs_to :user
    has_many :tags

    def creation_date
        created_at.strftime("%e %b %Y")
    end
end