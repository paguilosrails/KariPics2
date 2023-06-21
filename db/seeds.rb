# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# seeds.rb

# Crea el usuario
# seeds.rb

# Crea el usuario
user1 = User.create(email:"admin@correo.cl", name: "Admin", role: 2, password: "123456", password_confirmation: "123456")
  # Asocia la imagen de perfil al usuario desde AWS S3
image1 = URI.open('https://karipic3.s3.amazonaws.com/fotop2.jpg')
user1.image.attach(io: image1, filename: 'imagen1.jpg')

user2 =User.create(email:"correo@correo.cl", name: "correo1", role: 0, password: "123456", password_confirmation: "123456")
image2 = URI.open('https://karipic3.s3.amazonaws.com/fotop1.jpg')
user2.image.attach(io: image2, filename: 'imagen2.jpg')
    
  
  