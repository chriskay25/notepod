class Episode < ApplicationRecord
  belongs_to  :podcast
  has_many :notes
  has_many :users, through: :notes
  validates :title, presence: true
  
end