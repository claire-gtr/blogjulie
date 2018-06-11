class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
  mount_uploader :photo, PhotoUploader

  has_many :categories_posts_joins
  has_many :categories, through: :categories_posts_joins
end
