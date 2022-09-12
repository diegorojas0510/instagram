class Message < ApplicationRecord
  extend FriendlyId
  friendly_id :description, use: :slugged

end
