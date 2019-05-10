class User < ApplicationRecord

 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :buyed_exhibition, foreign_key: "buyer_id", class_name: "Exhibition"
  has_many :saling_exhibitions, -> { where("buyer_id is NULL") }, foreign_key: "user_id", class_name: "Exhibition"
  has_many :sold_exhibitions, -> { where("buyer_id is not NULL") }, foreign_key: "user_id", class_name: "Exhibition"

end
