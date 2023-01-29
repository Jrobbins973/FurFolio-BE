
puts "deleting old data"
User.destroy_all
Pet.destroy_all
puts "old data deleted"

puts "creating users"

u1 = User.create(username: "Joe", password: "password", email_address: 'joe@example.com')

puts "users created successfully"



puts "creating pets"

pet1 = Pet.create(user: u1, name: "Frankie", age: 1, breed: "Corgi", birthday: "07/17/2021", medications: "Trazadone, 25mg 2x/day")

puts "pets created successfully"

