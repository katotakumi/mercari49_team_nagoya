class AddPaysToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :card_number, :integer
    add_column :users, :year, :string
    add_column :users, :month, :string
    add_column :users, :security_number, :string
  end
end
