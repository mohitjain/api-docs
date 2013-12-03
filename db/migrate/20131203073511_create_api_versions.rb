class CreateApiVersions < ActiveRecord::Migration
  def self.up
    create_table :api_versions do |t|
      t.string :name
      t.text :description
      t.date :released_on
      t.integer :active, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :api_versions
  end
end
