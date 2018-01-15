# == Schema Information
#
# Table name: subscribers
#
#  id                :integer          not null, primary key
#  username          :string           not null
#  subscription_type :string           not null
#  streaming_limit   :integer          not null
#  password_digest   :string           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Subscriber < ApplicationRecord
  validates :username, :subscription_type,
            :streaming_limit, :password_digest, presence: true


end
