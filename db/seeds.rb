# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { 
    name: "Dishoom", 
    address: "7 Boundary St, London E2 7JE", 
    phone_number: "+351 666 666 666",
    category: "chinese"
}
pizza_east =  { 
    name: "Pizza East", 
    address: "56A Shoreditch High St, London E1 6PQ", 
    phone_number: "+351 999 999 999", 
    category: "italian"
}

mr_lu = {
    name: "Mr Lu", 
    address: "Rua de Gomes Freire, Lisboa 1000", 
    phone_number: "+351 444 444 444", 
    category: "chinese"

}

udon = {
    name: "Udon", 
    address: "Rua de Franco Napolitano, Lisboa 1030", 
    phone_number: "+351 111 111 111", 
    category: "japanese"

}

le_finesse = {
    name: "Le Finesse",
    address: "Rua do Castelo, Lisboa 1200", 
    phone_number: "+351 5555 555 555", 
    category: "french"

}

the_roll = {
    name: "The Roll", 
    address: "Rua do Carmo, Lisboa 1900", 
    phone_number: "+351 777 777 777", 
    category: "belgian"

}



[ dishoom, pizza_east, mr_lu, udon, le_finesse, the_roll ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"