class Note < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  belongs_to :episode, foreign_key: "episode_id"
  validates :content, presence: true
  
end