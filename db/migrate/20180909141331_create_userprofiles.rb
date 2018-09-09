class CreateUserprofiles < ActiveRecord::Migration[5.2]
  def change
    create_table :userprofiles do |t|
      t.string :name
      t.string :firstname
      t.integer :age
      t.string :country

      t.timestamps
    end
  end
end
