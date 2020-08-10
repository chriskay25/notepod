class Podcast < ApplicationRecord
  has_many :episodes
  has_many :subscriptions
  has_many :users, through: :subscriptions
  validates :name, presence: true, uniqueness: true
end
