class RemoveColumnToUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :expiration_year, :integer
  end
end
