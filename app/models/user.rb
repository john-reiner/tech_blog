class User < ApplicationRecord
    has_secure_password
    has_many :comments 
    has_many :blogs
    has_many :technology_topics, through: :blogs
end

