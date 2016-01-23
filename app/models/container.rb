# == Schema Information
#
# Table name: containers
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  category   :string
#  date       :datetime
#

class Container < ActiveRecord::Base
end
