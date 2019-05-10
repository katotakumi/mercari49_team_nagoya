class ChangeDataExpirationDateToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :expiration_month, :integer
  end
end
