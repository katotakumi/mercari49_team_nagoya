class AddPurchaseToExhibitions < ActiveRecord::Migration[5.0]
  def change
    add_column :exhibitions, :purchase_id, :integer
  end
end
