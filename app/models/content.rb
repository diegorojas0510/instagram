class Content < ApplicationRecord

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: { message: 'El nombre es requerido'}
  validates :description, presence: { message: 'La descripción es requerida'}

  validates :name, length: { maximum:200, minimum: 2, messages: "El nombre debe tener 2 caracteres"}


end
