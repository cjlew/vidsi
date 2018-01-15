# == Schema Information
#
# Table name: providers
#
#  id                      :integer          not null, primary key
#  name                    :string           not null
#  concurrent_viewer_limit :integer          not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class Provider < ApplicationRecord
  validates :name, :concurrent_viewer_limit, presence: true

end
