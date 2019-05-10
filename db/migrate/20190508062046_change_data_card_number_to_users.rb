class ChangeDataCardNumberToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :card_number, :bigint
  end
end
