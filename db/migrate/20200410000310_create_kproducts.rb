class CreateKproducts < ActiveRecord::Migration[5.2]
  def change
    create_table :kproducts do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :size
      t.decimal :price

      t.timestamps
    end
  end
end
