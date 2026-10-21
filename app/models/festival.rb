class Festival < ApplicationRecord
  has_many :stages, dependent: :destroy
  has_many :tickets, dependent: :restrict_with_error

  validates :name, presence: true
  validates :city, presence: true
  validates :starts_on, presence: true
end