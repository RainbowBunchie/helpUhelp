class RemoveAssignedFromTask < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :assigned, :bool
  end
end
