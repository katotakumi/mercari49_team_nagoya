# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|family_name|string|null: false|
|last_name|string|null: false|
|j_family_name|string|null: false|
|j_last_name|string|null: false|
|birthday|date|null: false|
|prefecture|integer|null: false|
|municipalities|string|null: false|
|address|string|null: false|
|building|string|null: false|
|phone_number|string|null: false|
|card_number|integer|null: false|
|expiration_date|date|null: false|
|security_number|integer|null: false|


### Association
- has_many :comments
- has_many :exhibitions,through: :user_exhibitions
- has_many :user_exhibitions

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|user_id|references|foreign_key: true|
|exhibitions_id|references|foreign_key: true|

### Association
- belongs_to :exhibition
- belongs_to :user

## exhibitionsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|category_id|references|foreign_key: true|
|bland_id|references|foreign_key: true|
|shipping_charges|string|null: false|
|shipping_area|string|null: false|
|shipping_data|string|null: false|
|price|string|null: false|

### Association
- has_many :comments
- has_many :images
- has_many :users, through: :user_exhibitions
- has_many :user_exhibitions
- belongs_to :category

## categorysテーブル

|Column|Type|Options|
|------|----|-------|
|path|integer|
|name|integer|null: false|

### Association
- has_many:exhibitions

## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|exhibition_id|references|foreign_key: true|
|image|string|

### Association
- belongs_to :exhibition


## user_exhibitionsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|exhibition_id|references|foreign_key: true|

### Association
- belongs_to :exhibition
- belongs_to :user

