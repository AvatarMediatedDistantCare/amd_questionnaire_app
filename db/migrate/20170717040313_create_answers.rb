class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :session_id
      t.integer :prev_id
      t.integer :next_id
      t.integer :audio_id
      t.integer :gesture_type
      t.integer :eval1
      t.integer :eval2
      t.integer :eval3
      t.integer :eval4
      t.integer :eval5
      t.integer :eval6
      t.integer :eval7
      t.integer :eval8
      t.integer :eval9

      t.timestamps
    end
  end
end
