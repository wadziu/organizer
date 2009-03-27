class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.text :name
      t.text :description
      t.integer :group_of_task_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
