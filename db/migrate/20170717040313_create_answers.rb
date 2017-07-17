class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :audio_gesture_id
      t.integer :eval1
      t.integer :eval2
      t.integer :eval3

      t.timestamps
    end
  end
end
