class Review < ApplicationRecord
  belongs_to :resorts
  belongs_to :members

  validates :title, presence: true
  validates :body, presence: true
  validates :the_day, presence: true
  
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

end
