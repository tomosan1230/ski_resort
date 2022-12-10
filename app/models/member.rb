class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy

  with_options presence: true do
    validates :nick_name
    validates :email
    validates :encrypted_password
  end
  
  def active_for_authentication?
    super && (is_deleted == false)
  end

end
