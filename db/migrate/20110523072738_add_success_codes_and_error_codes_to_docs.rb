class AddSuccessCodesAndErrorCodesToDocs < ActiveRecord::Migration
  def self.up
    add_column :docs, :success_codes, :text
    add_column :docs, :error_codes, :text
  end

  def self.down
    remove_column :docs, :error_codes
    remove_column :docs, :success_codes
  end
end
