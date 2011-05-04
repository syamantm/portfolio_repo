class AddContentToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :content, :text
  end

  def self.down
    remove_column :users, :content
  end
end
