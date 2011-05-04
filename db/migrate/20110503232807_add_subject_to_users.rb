class AddSubjectToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :subject, :string
  end

  def self.down
    remove_column :users, :subject
  end
end
