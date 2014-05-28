class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :role
      t.integer :scene_id

      t.timestamps
    end
  end
end
