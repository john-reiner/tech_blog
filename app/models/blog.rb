class Blog < ApplicationRecord
    belongs_to :technology_topic
    has_many :comments
    belongs_to :user
end
