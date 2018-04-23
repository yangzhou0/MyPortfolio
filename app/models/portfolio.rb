# == Schema Information
#
# Table name: portfolios
#
#  id          :integer          not null, primary key
#  title       :string
#  subtitle    :string
#  body        :text
#  main_image  :text
#  thumb_image :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  after_initialize :set_default_image

  has_many :technologies
  
  accepts_nested_attributes_for :technologies,
    reject_if: lambda{|attr| attr['name'].blank?}

  def self.react
    Portfolio.where(subtitle: 'React')
  end

  def set_default_image
    self.main_image ||= "http://via.placeholder.com/350x150"
    self.thumb_image ||= 'http://via.placeholder.com/250x50'
  end

end
