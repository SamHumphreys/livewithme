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
  has_many :reviews, :dependent => :destroy
  has_many :listings, :dependent => :destroy
end
