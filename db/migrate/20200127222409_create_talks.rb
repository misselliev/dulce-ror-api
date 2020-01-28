class CreateTalks < ActiveRecord::Migration[5.2]
  def change
    create_table :talks do |t|
      t.string :title
      t.text :description
      t.string :location
      t.date :date
      t.time :time
      t.string :speaker_name
      t.string :speaker_title
      t.timestamps
      t.integer :creator_id
    end
    add_foreign_key :talks, :users, column: :creator_id
  end
end
