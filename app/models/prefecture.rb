class Prefecture < ApplicationRecord
  has_many :resorts, dependent: :destroy
  validates :name, presence: true
end
