class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :text
      t.integer :positivrating
      t.integer :negativerating
      t.boolean :staranswer

      t.timestamps
    end
  end
end
