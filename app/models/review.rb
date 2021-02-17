class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, inclusion: { in: [1..10], allow_nil: false }
  validates :content, presence: true
end
