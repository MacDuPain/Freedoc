# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

require 'faker'

# Création de quelques villes
10.times do
 City.create(name: Faker::Address.city)
end

# Création de quelques spécialités
Specialty.create(name: "Cardiologie")
Specialty.create(name: "Dermatologie")
Specialty.create(name: "Gastroentérologie")
Specialty.create(name: "Neurologie")

# Création de quelques docteurs avec des spécialités
Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: "Cardiologie", zip_code: Faker::Address.zip_code, city: City.all.sample)

# Création de quelques patients
Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)

# Création de quelques rendez-vous
Appointment.create(date: Faker::Date.forward(days: 30), doctor: Doctor.all.sample, patient: Patient.all.sample, city_id: City.all.sample.id)
