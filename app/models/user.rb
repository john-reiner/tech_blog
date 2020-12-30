class User < ApplicationRecord
    before_create :set_default_avatar
    has_secure_password
    has_one_attached :profile_picture
    
    has_many :comments 
    has_many :blogs
    has_many :technology_topics, through: :blogs

    
    def set_default_avatar
        self.profile_picture = 'users/default_image.webp'
    end
end

