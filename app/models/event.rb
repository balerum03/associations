class Event < ApplicationRecord
	has_many :attendances
  has_many :users, through: :attendance, dependent: :destroy
  belongs_to :creator, class_name: 'User'
end
