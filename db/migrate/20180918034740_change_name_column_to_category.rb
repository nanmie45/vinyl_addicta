class ChangeNameColumnToCategory < ActiveRecord::Migration[5.2]
  def self.up
    change_column_null :categories, :name, false, 0
  end

  def self.down
    change_column_null :categories, :name, true, nil
  end
end
