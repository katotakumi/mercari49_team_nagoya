class ChangeDataExpirationDate2ToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :expiration_date, :date
  end
end
