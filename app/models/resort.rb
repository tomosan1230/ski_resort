class Resort < ApplicationRecord

  belongs_to :prefecture
  has_many :reviews
  has_one_attached :image
  is_impressionable counter_cache: true

  # G-map API
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true
  validates :feature, presence: true, length: { maximum: 40 }
  validates :postal_code, presence: true
  validates :address, presence: true

  def self.search(search, category)
    if category == 'name'
      Resort.where(['name LIKE(?)', "%#{search}%"])
    elsif category == 'prefecture'
      Resort.where(prefecture_id: search)
    else
      Resort.all
    end
  end

end
