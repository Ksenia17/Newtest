class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :project_id
      t.integer :user_id
      t.boolean :status_flg
      t.date :deadline
      t.integer :priority

      t.references :user, index: true
      t.references :project, index: true
      t.timestamps
    end
  end
end
