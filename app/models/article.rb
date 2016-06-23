class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_many :dislikes, dependent: :destroy
	validates :title, presence: true,
                    length: { minimum: 5 }
    validates :subtitle, presence: true,
                    length: { minimum: 10 }
end
