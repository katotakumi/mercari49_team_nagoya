class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # バリデーション
  validates :nickname, presence: true
  validates :family_name, presence: true
  validates :last_name, presence: true
  validates :j_family_name, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカナ文字で入力してください' }
  validates :j_last_name, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカナ文字で入力してください' }
  validates :birthday, presence: true
  validates :prefecture, presence: true
  validates :municipalities, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, uniqueness: true, numericality: true
  validates :card_number, presence: true , numericality: true
  validates :expiration_date, presence: true
  validates :security_number, presence: true , numericality: true
end
