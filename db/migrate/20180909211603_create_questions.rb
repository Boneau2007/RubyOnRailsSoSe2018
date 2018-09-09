class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :topic
      t.string :text
      t.integer :likes
      t.boolean :answered

      t.timestamps
    end
  end
end
