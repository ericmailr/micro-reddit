class User < ApplicationRecord
    validates :username, presence: true, length: {minimum: 5, maximum: 30}, uniqueness: { case_sensitive: false }
    has_many :posts, dependent: :destroy    
    has_many :comments, dependent: :destroy
end
