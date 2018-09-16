class ChangeColumnToProducts < ActiveRecord::Migration[5.2]
  def self.up
    change_column_null :products, :price, false, 0
  end

  def self.down
    change_column_null :products, :price, true, nil
  end
end
