class Artist < ApplicationRecord
  has_many :tracks, dependent: :destroy

  validates :name, :genre, presence: true
end
