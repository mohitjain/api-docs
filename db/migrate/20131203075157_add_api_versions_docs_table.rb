class AddApiVersionsDocsTable < ActiveRecord::Migration
  def self.up
       create_table :api_versions_docs, :id => false do |t|
         t.integer :api_version_id
         t.integer :doc_id
       end
  end

  def self.down
    drop_table :api_versions_docs
  end
end
