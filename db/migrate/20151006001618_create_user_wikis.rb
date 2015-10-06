class CreateUserWikis < ActiveRecord::Migration
  def change
    create_table :user_wikis do |t|
      t.integer :user_id, null: false
      t.integer :wiki_id, null: false
    end
  end
end
