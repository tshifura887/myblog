class Article < ApplicationRecord
    inlude visible
    has_many :comments
    
    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}
end
