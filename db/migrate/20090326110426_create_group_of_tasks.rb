class CreateGroupOfTasks < ActiveRecord::Migration
  def self.up
    create_table :group_of_tasks do |t|
      t.text :name
      t.text :description
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :group_of_tasks
  end
end
