# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
AdminUser.find_or_create_by!(email: 'ssimarjot022@gmail.com') do |admin|
  admin.password = 'password'
  admin.password_confirmation = 'password'
end if Rails.env.development?

Customer.find_or_create_by!(full_name: "Karman Singh") do |customer|
  customer.phone_number = "123-456-7890"
  customer.email_address = "Karman1@gmail.com"
  customer.notes = "Regular customer."
end

Customer.find_or_create_by!(full_name: "Harleen Kaur") do |customer|
  customer.phone_number = "098-765-4321"
  customer.email_address = nil
  customer.notes = "Prefers email communication."
end

Customer.find_or_create_by!(full_name: "Samanpreet Kaur") do |customer|
  customer.phone_number = "555-555-5555"
  customer.email_address = "Samanpreet@gmail.com"
  customer.notes = "Interested in premium services."
end

Customer.find_or_create_by!(full_name: "Arshpreet Kaur") do |customer|
  customer.phone_number = "444-444-4444"
  customer.email_address = nil
  customer.notes = "Needs follow-up."
end

Customer.find_or_create_by!(full_name: "Jaskarn Singh") do |customer|
  customer.phone_number = "333-333-3333"
  customer.email_address = "Jaskarn@gmail.com"
  customer.notes = "VIP customer."
end
