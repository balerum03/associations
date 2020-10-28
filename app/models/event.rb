class Event < ApplicationRecord
	has_many :attendances
  	has_many :users, through: :attendance, dependent: :destroy
  	belongs_to :creator, class_name: 'User'
  	
    scope :today, -> { where('date == ?', Date.today) }
  	scope :upcoming, -> { where('date > ?', Date.today) }
  	scope :previous, -> { where('date < ?', Date.today) }
end
