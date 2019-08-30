class AddAssignTypeToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :assignment_type, :integer
  end
end
