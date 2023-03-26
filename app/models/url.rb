class Url < ApplicationRecord

  validates_presence_of :link
  validates :link, format: URI::regexp(%w[http https])
  validates_uniqueness_of :slug
  validates_length_of :link, within: 3..255, on: :create, message: "Not in range"
  validates_length_of :slug, within: 3..255, on: :create, message: "too long"

  before_validation :generate_slug
  
  def generate_slug
    self.slug = SecureRandom.uuid[0..5]
    true
  end

  def short
    Rails.application.routes.url_helpers.short_url(slug: self.slug)
  end
end
