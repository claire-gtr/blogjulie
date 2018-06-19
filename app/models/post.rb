class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
  mount_uploader :photo, PhotoUploader

  has_many :category_posts
  has_many :categories, through: :category_posts
  has_many :comments, dependent: :destroy
end
