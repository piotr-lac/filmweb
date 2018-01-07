class Opinion < ApplicationRecord
  validates :nick, presence: true, length: { minimum: 3, maximum: 50}
  validates :review, presence: true, length: { minimum: 3, maximum: 50}
  validates :rating, presence: true
end