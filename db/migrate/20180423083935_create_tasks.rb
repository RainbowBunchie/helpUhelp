class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :description
      t.date :date
      t.time :time
      t.string :place
      t.boolean :assigned
      t.integer :no_of_people

      t.timestamps
    end
  end
end
