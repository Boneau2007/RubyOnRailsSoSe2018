class AddReferenceToAnswer < ActiveRecord::Migration[5.2]
  def change
    add_reference :answers, :user, index: true
  end
end
