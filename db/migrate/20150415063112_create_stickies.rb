class CreateStickies < ActiveRecord::Migration
  def change
    create_table :stickies do |t|
      t.text :body
      t.integer  :idea_id
      t.integer :author_id
      t.string :section
      t.string :stage

      t.timestamps null: false
    end
  end
end
