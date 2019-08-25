class AddValuesToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :command, :string
    add_column :assignments, :argument, :string
  end
end
