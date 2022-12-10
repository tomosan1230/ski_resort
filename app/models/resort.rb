class Resort < ApplicationRecord
  belongs_to :prefecture
  has_many :reviews
  has_one_attached :image

  validates :image, presence: true
  validates :name, presence: true
  validates :feature, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true

end
