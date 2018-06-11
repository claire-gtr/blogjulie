class Category < ApplicationRecord
  has_many :categories_posts_joins
  has_many :posts, through: :categories_posts_joins
  validates :name, uniqueness: :true
end
