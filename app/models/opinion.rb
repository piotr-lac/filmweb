class Opinion < ApplicationRecord
  validates :nick, presence: true, length: { minimum: 3, maximum: 50}
  validates :review, presence: true, length: { minimum: 3, maximum: 50}
  validates :rating, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 5 }

  belongs_to :film
end