class Profile < ApplicationRecord
  #extend FriendlyId
  #friendly_id :username, use: :slugged

  belongs_to :user
  #has_many :contents

  has_one_attached :image, :dependent => :destroy
end
