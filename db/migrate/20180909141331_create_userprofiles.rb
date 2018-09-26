class CreateUserprofiles < ActiveRecord::Migration[5.2]
  def change
    create_table :userprofiles do |t|
      t.string :name, :limit => 63, :null => false
      t.string :firstname, :limit => 63, :null => false
      t.integer :age, :limit => 3, :null => false
      t.integer :sex, :limit => 31, :null => false
      t.string :country, :limit => 63, :null => false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
