class Content < ApplicationRecord

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: { message: 'El nombre es requerido'}
  validates :description,length: { maximum:500, minimum: 2}, presence: { message: 'La descripción es requerida'}

  validates :name, length: { maximum:200, minimum: 2, messages: "El nombre debe tener 2 caracteres"}

  has_many :comments

  has_one_attached :image, :dependent => :destroy
end
