class Blog < ApplicationRecord
  validates_presence_of :title, :body
  extend FriendlyId
  friendly_id :title, use: :slugged
  enum status: {draft: 0, published: 1}
  def should_generate_new_friendly_id?
    title_changed?
  end
end
