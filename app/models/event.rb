class Event < ApplicationRecord
    has_many :participations
    has_many :participants, class_name: "User"
    belongs_to :admin, class_name: 'User'


  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

    validates :start_date, presence: true
    validate  :start_date_cannot_be_in_the_past
    validates :title, presence: true, length: { in: 5..120 }
    validates :duration,numericality: { greater_than: 10 }
    validates :description, presence: true, length: { in: 5..500 }
    validates :price,numericality: { greater_than: 10}
    validates :location, presence: true
end
