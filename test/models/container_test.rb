# == Schema Information
#
# Table name: containers
#
#  id                 :integer          not null, primary key
#  title              :string
#  text               :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  category           :string
#  date               :datetime
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

require 'test_helper'

class ContainerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
