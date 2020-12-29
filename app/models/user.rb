class User < ApplicationRecord
    has_secure_password
    has_one_attached :profile_picture
    has_many :comments 
    has_many :blogs
    has_many :technology_topics, through: :blogs
end

