class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :name
      t.text :narrative
      t.string :place
      t.string :period
      t.integer :chapter_id

      t.timestamps
    end
  end
end
