class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}
  validates :name, presence: true
  validates :address, presence: true
end
