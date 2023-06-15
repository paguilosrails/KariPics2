class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum :role, [:normal_user, :author, :admin]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :publications 
  has_many :comentarios
  has_many :images, as: :imageable
  has_one_attached :images
  accepts_nested_attributes_for :images

end
