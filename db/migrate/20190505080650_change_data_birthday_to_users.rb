class ChangeDataBirthdayToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :birthday, :datetime, default: "0000-00-00 00:00:00"
  end
end
