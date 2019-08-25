class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :description
      t.datetime :due_date
      t.boolean :sent_to_users, default: false

      t.timestamps
    end
  end
end
