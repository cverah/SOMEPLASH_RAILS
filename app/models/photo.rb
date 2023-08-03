class Photo < ApplicationRecord
  belongs_to :category, counter_cache: true
  has_many :comments, as: :commentable, dependent: :destroy
  has_one_attached :image
  validates :title, :image, presence: true
end
