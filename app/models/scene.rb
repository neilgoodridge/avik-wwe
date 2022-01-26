class Scene < ApplicationRecord

  # belongs_to :user
  # has_one_attached :photo
  validates :name, :title, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
    against: [ :title, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
