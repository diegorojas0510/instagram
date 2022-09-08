class Message < ApplicationRecord
  extend FriendlyId
  friendly_id :description, use: :slugged

  #Message.all.order('created_at DESC')
  def self.comment
    order('created_at DESC')
  end
end
