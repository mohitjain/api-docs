class AddCategoryIdToDocs < ActiveRecord::Migration
  def self.up
    add_column :docs, :category_id, :integer
  end

  def self.down
    remove_column :docs, :category_id
  end
end
