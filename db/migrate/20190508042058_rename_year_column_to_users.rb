class RenameYearColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :year, :expiration_date
  end
end
