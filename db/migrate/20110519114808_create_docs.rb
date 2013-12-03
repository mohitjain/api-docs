class CreateDocs < ActiveRecord::Migration
  def self.up
    create_table :docs do |t|
      t.string :title_short
      t.text :title_long
      t.text :description
      t.string :http_method
      t.string :requires_authentication
      t.text :query_format
      t.text :sample_query
      t.text :parameters
      t.string :response_format
      t.text :response_output_format

      t.timestamps
    end
  end

  def self.down
    drop_table :docs
  end
end
