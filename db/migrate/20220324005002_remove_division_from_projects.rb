class RemoveDivisionFromProjects < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :division, :string
  end
end
