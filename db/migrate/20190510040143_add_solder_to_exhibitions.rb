class AddSolderToExhibitions < ActiveRecord::Migration[5.0]
  def change
    add_column :exhibitions, :buyer_id, :integer
  end
end
