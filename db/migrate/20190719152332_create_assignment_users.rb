class CreateAssignmentUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :assignment_users do |t|
      t.references :user 
      t.references :assignment
      t.datetime :submit_date, default: -> { 'CURRENT_TIMESTAMP' }
      t.timestamps
    end
  end
end
