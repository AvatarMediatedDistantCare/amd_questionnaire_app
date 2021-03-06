class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :session_id
      t.integer :prev_id
      t.integer :next_id
      t.integer :motion_id
      t.integer :gesture_type
      t.integer :side_id
      t.integer :order
      t.integer :eval1
      t.integer :eval2
      t.integer :eval3
      t.integer :eval4

      t.timestamps
    end
  end
end
