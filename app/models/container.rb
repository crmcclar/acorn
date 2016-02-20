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

class Container < ActiveRecord::Base
  has_attached_file :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
