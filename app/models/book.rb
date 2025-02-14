# == Schema Information
#
# Table name: books
#
#  id         :bigint(8)        not null, primary key
#  google_id  :string
#  title      :string
#  author     :string
#  category   :string
#  cover      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ApplicationRecord
  has_many :likes
  has_many :users, through: :likes
end
