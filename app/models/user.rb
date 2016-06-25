class User < ActiveRecord::Base
    #resourcify
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :articles
         has_many :likes, dependent: :destroy
         has_many :dislikes, dependent: :destroy
end
