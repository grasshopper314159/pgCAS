class AddGradetoAssignmentUser < ActiveRecord::Migration[5.2]
  def change
    add_column :assignment_users, :grade, :float
  end
end
