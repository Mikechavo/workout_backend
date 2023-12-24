class CreateRoutines < ActiveRecord::Migration[7.1]
  def change
    create_table :routines do |t|
      t.string :muscle_group
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.text :image
      t.string :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
