class Tweet < ApplicationRecord
    belongs_to :user
    has_many :tags

    attribute :hashtags

    after_create :create_tags

    def create_tags
        # debugger
        hashtags.split(',').each do |h|
            hashtag = Hashtag.find_or_create_by name: h
            Tag.create tweet: self, hashtag: hashtag
        end
    end

    def creation_date
        created_at.strftime("%e %b %Y")
    end

    def list_hashtags
        tags.map{ |t| t.hashtag.name }.join(',')
    end
end