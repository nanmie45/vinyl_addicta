class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :artist
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
