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

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
