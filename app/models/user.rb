class User < ApplicationRecord
  validates :username, :email, presence: true
  has_many :attendances
  has_many :events, through: :attendances
  has_many :own_events, foreign_key: 'creator_id', class_name: 'Event'

  scope :previous, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date > ?', Date.today) }
  scope :today, -> { where('date == ?', Date.today) }
end
