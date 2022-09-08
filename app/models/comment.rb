class Comment < ApplicationRecord
  belongs_to :content
  has_many :votes, as: :votable
end
