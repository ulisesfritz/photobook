class Post < ActiveRecord::Base
    has_attached_file :photo, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
    # Establish the relationship between models.
    belongs_to :user
    # Add validation to Post model in /app/models/post.rb
    validates :title, presence: true
   validates :title, presence: true, length: { minimum: 5}
   validates :description, length: { maximum: 64 }
   validates :user_id, presence: true
   validates :photo, attachment_presence: true
end
