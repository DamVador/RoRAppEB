class User < ApplicationRecord
    has_many :participations
    has_many :events, through: :participations
    has_many :participants, foreign_key: 'participant_id', class_name: "Event"
    has_many :admins, foreign_key: 'admin_id', class_name: "Event"
end
