# == Schema Information
#
# Table name: likes
#
#  id      :bigint(8)        not null, primary key
#  user_id :integer
#  book_id :integer
#

class Like < ApplicationRecord
  belongs_to :book
  belongs_to :user
end
