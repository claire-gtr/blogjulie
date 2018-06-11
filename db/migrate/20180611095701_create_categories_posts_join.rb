class CreateCategoriesPostsJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_posts_joins do |t|
      t.references :category, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
