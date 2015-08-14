class AddDetailsToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :fb, :string
    add_column :contacts, :github, :string
    add_column :contacts, :twitter, :string
    add_column :contacts, :city, :string
    add_column :contacts, :state, :string
    remove_column :contacts, :city_state, :string
  end
end
