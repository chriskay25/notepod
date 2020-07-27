class User < ApplicationRecord
  has_many :subscriptions
  has_many :podcasts, through: :subscriptions
  has_many :notes
  has_many :episodes, through: :notes
  has_secure_password
  validates :username, presence: true, uniqueness: true
end 