class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #has_secure_password # para controlar el password y no almacenarlo como texto plano
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :contents
  has_one :profile, :dependent => :destroy

  after_create :set_profile

  def set_profile
    self.profile = Profile.create
  end

end
