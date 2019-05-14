class Exhibition < ApplicationRecord
  belongs_to :user,optional: true
 
  belongs_to :purchase, class_name: "User", optional: true
  
  mount_uploader :image, ImageUploader

 
end
