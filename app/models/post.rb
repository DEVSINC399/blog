class Post < ApplicationRecord

    has_many :comments

    before_destroy :before_destroy_action

    validates :title, presence: true, length: { minimum: 5 }
    validates :body, presence: true

    def before_destroy_action
        puts "Before Deletion"
    end

end
