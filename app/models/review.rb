class Review < ApplicationRecord
  belongs_to :resort
  belongs_to :member

  validates :title, presence: true, length: { minimum: 2, maximum: 20 }
  validates :body, presence: true, length: { maximum: 50 }
  validates :the_day, presence: true

  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 0.5
  }, presence: true

end
