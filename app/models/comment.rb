class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  validates :body, presence: true
  after_create :increment_comments_photo, if: -> {commentable_type == "Photo"}
  after_destroy :decrement_comments_photo, if: -> {commentable_type == "Photo"}

  private
  def increment_comments_photo
      # p commentable
      comment_photo = commentable
      comment_photo.comments_count += 1
      comment_photo.save
  end
  def decrement_comments_photo
      # p commentable
      comment_photo = commentable
      comment_photo.comments_count -= 1
      comment_photo.save
  end
end
