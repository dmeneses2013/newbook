# == Schema Information
#
# Table name: users
#
#  id :bigint(8)        not null, primary key
#

class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
end
