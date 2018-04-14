class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  after_initialize :set_default_image

  def self.react
    Portfolio.where(subtitle: 'React')
  end

  def set_default_image
    self.main_image ||= "http://via.placeholder.com/350x150"
    self.thumb_image ||= 'http://via.placeholder.com/250x50'
  end

end
