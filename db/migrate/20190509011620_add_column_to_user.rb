class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :expiration_year, :integer
  end
end
