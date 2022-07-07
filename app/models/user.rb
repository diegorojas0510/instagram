class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #has_secure_password # para controlar el password y no almacenarlo como texto plano
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
