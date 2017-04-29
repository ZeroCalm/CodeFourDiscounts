class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :locations, through: :articles


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 devise :omniauthable, :omniauth_providers => [:facebook]
end
