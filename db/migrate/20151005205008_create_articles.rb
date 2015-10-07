class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string  :title, null: false
      t.string  :content, null: false
      t.boolean :published, null: false, default: false
      t.boolean :needs_sources, null: false, default: true
      t.integer :wiki_id, null: false

      t.timestamps(null: false)
    end
  end
end
