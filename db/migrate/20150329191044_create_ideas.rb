class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :author
      t.text :description
      t.text :valueProposition
      t.text :customerSegment
      t.integer :marketSize
      t.text :resources
      t.string :stage
      t.text :vision
      t.string :sector
      t.string :picture
      t.timestamps null: false
    end
  end
end
