class Episode < ApplicationRecord
  belongs_to  :podcast
  has_many :notes
  has_many :users, through: :notes
  validates :title, presence: true

  scope :most_noted, -> { order(note_count: :desc).limit(1) }

  def note_count
    notes.size
  end 
  
end