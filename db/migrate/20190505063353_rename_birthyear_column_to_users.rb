class RenameBirthyearColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :birthiday_year, :birthday
  end
end
