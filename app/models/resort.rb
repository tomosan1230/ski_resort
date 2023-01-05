class Resort < ApplicationRecord
  belongs_to :prefecture
  has_many :reviews
  has_one_attached :image
  is_impressionable counter_cache: true


  validates :name, presence: true
  validates :feature, presence: true, length: { maximum: 40 }
  validates :postal_code, presence: true
  validates :address, presence: true

  def self.search(search)
    if search != ""
      Resort.where(['name LIKE(?) OR prefecture_id LIKE(?)', "%#{search}%", "%#{search}%"])
    else
      Resort.all
    end
  end

end
