class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :tasks do |t|
      t.index [:user_id, :task_id]
      t.index [:task_id, :user_id]
      t.boolean :confirmed
    end
  end
end
