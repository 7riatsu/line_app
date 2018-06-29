class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name, null: false, index: true, unique: true
      t.timestamps
      add_index :groups, :name
    end
  end
end
