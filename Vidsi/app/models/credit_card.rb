# == Schema Information
#
# Table name: credit_cards
#
#  id                 :integer          not null, primary key
#  subscriber_id      :integer          not null
#  credit_card_number :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class CreditCard < ApplicationRecord
  validates :subscriber_id, :credit_card_number, presence: true
end
