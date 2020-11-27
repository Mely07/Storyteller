class Story < ApplicationRecord
    # has_many :objects, class_name: "object", foreign_key: "reference_id"

    def self.topStory
        Story.find_by_sql("SELECT * FROM stories WHERE id =(SELECT story_id FROM comments GROUP BY story_id ORDER BY count(*) DESC LIMIT 1)")
    end
end
