class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.string :details
      t.boolean :done, null: false, default: false

      t.timestamps
    end
  end
end
