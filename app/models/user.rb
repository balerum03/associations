class User < ApplicationRecord
	has_many :events
	has_many :own_events, foreign_key: 'creator_id', class_name: 'Event'
end
