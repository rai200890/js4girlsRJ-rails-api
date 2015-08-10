class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :city_state
      t.string :country
      t.timestamps null: false
    end
  end
end
