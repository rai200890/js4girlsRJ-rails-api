class CreateContactsTags < ActiveRecord::Migration
  def change
    create_table :contacts_tags do |t|
      t.integer :contact_id, index: true
      t.integer :tag_id, index: true
    end
  end
end
