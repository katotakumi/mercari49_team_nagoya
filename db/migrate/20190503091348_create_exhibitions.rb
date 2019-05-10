class CreateExhibitions < ActiveRecord::Migration[5.0]
  def change
    create_table :exhibitions do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text   :text
      t.string :image
      t.string :category
      t.string :state
      t.string :shipping_charge
      t.string :shipping_area
      t.string :shipping_data
      t.string :price


      t.timestamps
    end
  end
end
