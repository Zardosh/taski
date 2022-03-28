class ChangeDataTypeForStage < ActiveRecord::Migration[7.0]
  def change
    change_column :projects, :stage, :string
  end
end
