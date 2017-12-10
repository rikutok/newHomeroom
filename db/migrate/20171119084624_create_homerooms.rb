class CreateHomerooms < ActiveRecord::Migration
  def change
    create_table :homerooms do |t|
      t.string :name
      t.integer :class
      t.string :mail
      t.string :student

      t.timestamps null: false
    end
  end
end
