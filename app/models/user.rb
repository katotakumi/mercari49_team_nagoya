class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # バリデーション
  with_options presence: true do
    validates :nickname
    validates :family_name
    validates :last_name
    validates :birthday
    validates :prefecture
    validates :municipalities
    validates :address
    validates :expiration_date
  end

  with_options presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカナ文字で入力してください' } do
    validates :j_family_name
    validates :j_last_name
  end

  validates :phone_number, presence: true, uniqueness: true, numericality: true

  with_options presence: true, presence: true , numericality: true do
    validates :card_number
    validates :security_number
  end
end
