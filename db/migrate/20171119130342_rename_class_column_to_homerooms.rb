class RenameClassColumnToHomerooms < ActiveRecord::Migration
  def change
    rename_column :homerooms, :class, :class_set
  end
end
