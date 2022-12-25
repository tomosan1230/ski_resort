class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy

  with_options presence: true do
    validates :nick_name, length: { minimum: 2, maximum: 10 }
    validates :email
    validates :encrypted_password
  end

  def active_for_authentication?
    super && (is_deleted == false)
  end


  def self.guest
    find_or_create_by!(nick_name: 'guestuser' ,email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.nick_name = "guestuser"
    end
  end

end
