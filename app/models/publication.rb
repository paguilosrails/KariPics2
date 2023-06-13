class Publication < ApplicationRecord
 belongs_to :user
 has_many :images, as: :imageable
 has_many :comentarios
end
