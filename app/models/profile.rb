class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :photo, :dependent => :destroy
end
