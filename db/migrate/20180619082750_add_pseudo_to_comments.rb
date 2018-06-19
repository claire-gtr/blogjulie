class AddPseudoToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :pseudo, :string
  end
end
