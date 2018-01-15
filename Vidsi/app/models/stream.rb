# == Schema Information
#
# Table name: streams
#
#  id                  :integer          not null, primary key
#  video_id            :integer          not null
#  subscriber_id       :integer          not null
#  currently_streaming :boolean          default(FALSE), not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Stream < ApplicationRecord
  validates :video_id, :subscriber_id, presence: true

end
