# == Schema Information
#
# Table name: invoices
#
#  id            :integer          not null, primary key
#  subscriber_id :integer          not null
#  price         :integer          not null
#  date          :datetime         not null
#  status        :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Invoice < ApplicationRecord
  validates :subscriber_id, :price, :date, :status, presence: true
end
