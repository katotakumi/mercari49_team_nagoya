class RemoveBirthFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :birthday_month, :integer
    remove_column :users, :birthday_day, :integer
  end
end
