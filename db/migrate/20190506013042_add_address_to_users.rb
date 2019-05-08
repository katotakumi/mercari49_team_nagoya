class AddAddressToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :prefecture, :integer
    add_column :users, :municipalities, :string
    add_column :users, :address, :string
    add_column :users, :building, :string
    add_column :users, :phone_number, :string
  end
end
