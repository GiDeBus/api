class Article < ApplicationRecord
  validates :title, :slug, :content, presence: true
  validates :slug, uniqueness: true

  scope :recent, -> { order(created_at: :desc) }
end
