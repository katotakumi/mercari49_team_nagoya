class User < ApplicationRecord

 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :buyed_exhibition, foreign_key: "purchase_id", class_name: "Exhibition"
  has_many :saling_exhibitions, -> { where("purchase_id is NULL") }, foreign_key: "user_id", class_name: "Exhibition"
  has_many :sold_exhibitions, -> { where("purchase_id is not NULL") }, foreign_key: "user_id", class_name: "Exhibition"
       
       
  
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
