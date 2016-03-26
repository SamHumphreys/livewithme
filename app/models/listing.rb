# == Schema Information
#
# Table name: listings
#
#  id         :integer          not null, primary key
#  available  :boolean
#  address    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  suburb     :text
#

class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :images
end
