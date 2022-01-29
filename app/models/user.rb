class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  validates :name, presence: true
  validates_numericality_of :posts_counter, only_integer: true, greater_than_or_equal: 0

  def most_recent_posts
    posts.order('created_at DESC').limit(3)
  end
end
