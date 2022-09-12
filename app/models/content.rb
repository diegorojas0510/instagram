class Content < ApplicationRecord

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: { message: 'El nombre es requerido'}
  validates :description,length: { maximum:500, minimum: 2}, presence: { message: 'La descripción es requerida'}

  validates :name, length: { maximum:200, minimum: 2, messages: "El nombre debe tener 2 caracteres"}

  has_many :votes, as: :votable, :dependent => :destroy

  has_many :comments, -> { order('id DESC') }, :dependent => :destroy

  has_one_attached :image, :dependent => :destroy


  scope :visible, -> {where( visible:true ) }

  belongs_to :user
  #belongs_to :profile

  def self.populars
    joins("LEFT JOIN votes ON votes.votable_id = contents.id AND votes.votable_type = 'Content'")
    .select("contents.*, count(votes.id) as total")
    .group('contents.id')
    .order('total DESC')
  end

end
