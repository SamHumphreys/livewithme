# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  password_digest :text
#  first_name      :text
#  surname         :text
#  image           :text
#  phone           :text
#  social_media    :text
#  is_admin        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_and_belongs_to_many :reviews
  has_many :listings
end
