class CreateAnecdotes < ActiveRecord::Migration
  def change
    create_table :anecdotes do |t|
      t.string :subject
      t.text :description
      t.integer :chapter_id

      t.timestamps
    end
  end
end
