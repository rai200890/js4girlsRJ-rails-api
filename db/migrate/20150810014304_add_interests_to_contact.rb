class AddInterestsToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :interests, :text
  end
end
