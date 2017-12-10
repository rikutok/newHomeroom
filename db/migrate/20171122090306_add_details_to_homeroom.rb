class AddDetailsToHomeroom < ActiveRecord::Migration
  def change
    add_column :homerooms, :dating, :date
    add_column :homerooms, :comments, :text
  end
end
