class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :topic, :limit => 127, :null => false
      t.text :text, :limit => 511, :null => false
      t.integer :likes
      t.boolean :answered
      t.references :userprofile, foreign_key: true
      t.timestamps
    end
  end
end
