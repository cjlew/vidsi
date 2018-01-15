# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  provider_id :integer          not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Video < ApplicationRecord
  validates :provider_id, :title, presence: true
end
