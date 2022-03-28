class AddDivisionToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :division, :string
  end
end
