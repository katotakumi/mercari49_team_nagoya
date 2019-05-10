class RemoveMonthFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :month, :integer
  end
end
