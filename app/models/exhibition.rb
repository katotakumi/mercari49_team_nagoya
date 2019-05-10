class Exhibition < ApplicationRecord
  belongs_to :user,optional: true
 
  belongs_to :buyer, class_name: "User"
  
  mount_uploader :image, ImageUploader

 
end
