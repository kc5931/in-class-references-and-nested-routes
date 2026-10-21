class Attendee < ApplicationRecord
  # Tickets are purchase records, so block deleting an attendee who has any
  has_many :tickets, dependent: :restrict_with_error

  validates :name, :email, presence: true
end
