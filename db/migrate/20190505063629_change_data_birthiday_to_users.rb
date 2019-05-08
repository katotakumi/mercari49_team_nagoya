class ChangeDataBirthidayToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :birthday, :date, default: DateTime.now
  end
end
