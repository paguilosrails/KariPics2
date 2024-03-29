class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum :role, [:normal_user, :author, :admin]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :publications 
  has_many :comentarios
  # has_one :active_storage_attachments, as: :record, class_name: 'ActiveStorage::Attachment', dependent: :destroy
  has_one_attached :image
  validates :image, presence: true
  

end
