class Festival < ApplicationRecord
  has_many :stages, dependent: :destroy

  validates :name, presence: true
  validates :city, presence: true
  validates :starts_on, presence: true
end