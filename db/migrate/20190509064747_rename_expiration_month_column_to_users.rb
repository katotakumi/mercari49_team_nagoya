class RenameExpirationMonthColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :expiration_month , :expiration_date
  end
end
