class RenameExpirationDateColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :expiration_date, :expiration_month
  end
end
