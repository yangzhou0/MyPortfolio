# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#  status     :integer          default("draft")
#  topic_id   :integer
#

class Blog < ApplicationRecord
  validates_presence_of :title, :body, :topic_id
  extend FriendlyId
  friendly_id :title, use: :slugged
  enum status: {draft: 0, published: 1}

  belongs_to :topic
  def should_generate_new_friendly_id?
    title_changed?
  end
end
