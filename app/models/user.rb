# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  email           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :text
#

require './lib/recommendation.rb'

class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :likes
  has_many :books, through: :likes

  include Recommendation
end
