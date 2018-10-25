require 'faker'
=begin
ActiveRecord::Base.connection.execute("DELETE FROM SQLITE_SEQUENCE")
Speciality.delete_all
City.delete_all
Doctor.delete_all
Patient.delete_all
Rdv.delete_all
=end 




 5.times do |city|
	city = City.create!(name: Faker::Address.city, postal_code: Faker::Address.zip_code )
end 

5.times do
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city_id: rand(1..5))
end

5.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city_id: rand(1..5) , speciality_id: rand(1..5))
end



5.times do
  rdv = Rdv.create!(date: Faker::Date.between(50.days.ago, Date.today) , patient_id: rand(1..5), doctor_id: rand(1..5), city_id: rand(1..5))
end



5.times do
  speciality = Speciality.create!(name: Faker::Job.field )
end

