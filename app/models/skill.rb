# == Schema Information
#
# Table name: skills
#
#  id               :integer          not null, primary key
#  title            :string
#  percent_utilized :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Skill < ApplicationRecord
  validates_presence_of :title, :percent_utilized
end
