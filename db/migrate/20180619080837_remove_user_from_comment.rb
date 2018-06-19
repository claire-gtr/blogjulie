class RemoveUserFromComment < ActiveRecord::Migration[5.2]
  def change
    remove_reference :comments, :user, index: true, foreign_key: true
  end
end
