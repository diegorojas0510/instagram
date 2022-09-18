class Message < ApplicationRecord
  extend FriendlyId
  friendly_id :description, use: :slugged

  has_one_attached :image, :dependent => :destroy
  has_many :user
end
