class Post < ApplicationRecord
  has_rich_text :body

  scope :published, -> { where(status: Post::STATUS[:published]) }
  scope :draft, -> { where(status: Post::STATUS[:draft])}
  scope :past_week, -> { where(created_at: Time.zone.now.at_beginning_of_week...Time.zone.now.at_end_of_week) }
  scope :desc, -> { order(:desc) }
  scope :asc, -> { order(:asc) }

  STATUS = {
    published: "Published",
    draft: "Draft"
  }
end
