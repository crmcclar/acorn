# == Schema Information
#
# Table name: attachments
#
#  id                :integer          not null, primary key
#  file_file_name    :string
#  file_content_type :string
#  file_file_size    :integer
#  file_updated_at   :datetime
#  type              :string           not null
#

class Attachment < ActiveRecord::Base
  has_attached_file :file
  validates :type, presence: true
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/
end
