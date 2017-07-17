class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :session_id
      t.integer :prev_id
      t.integer :next_id
      t.integer :audio_id
      t.integer :eval1_1
      t.integer :eval1_2
      t.integer :eval1_3
      t.integer :eval2_1
      t.integer :eval2_2
      t.integer :eval2_3
      t.integer :eval3_1
      t.integer :eval3_2
      t.integer :eval3_3

      t.timestamps
    end
  end
end
