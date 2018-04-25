class CreateStatusTaskUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :status_task_users do |t|
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.references :status, foreign_key: true

      t.timestamps
    end
  end
end
