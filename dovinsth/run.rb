require './worker'
require './address'

test_scores = Array.new
params = Hash.new

# Take inputs from user
puts "Here comes the time for some fun\n"

print "Please enter your name:"

name = STDIN.gets.chomp

print "Please enter yours age:"

age = (STDIN.gets.chomp).to_i

print "Please enter your gender (male/female)"
gender = (STDIN.gets.chomp)

print "How many test scores do you have?"
index = (STDIN.gets.chomp).to_i

(1..index).each do |n|
	print "Enter test score #{n}:"
	test_scores << gets.chomp.to_i
end

puts "\nPlease enter your address details here.\n"

print "Please enter your country:"
country = STDIN.gets.chomp

print "Please enter your city:"
city = STDIN.gets.chomp

print "Please enter your zip-code:"
zip_code = (STDIN.gets.chomp)


address_hash = {country: country, city: city, zip_code: zip_code}
address = Address.new(address_hash)
params = {name: name, age: age, gender: gender, test_scores: test_scores, address: address}

puts "Checking whether you are eligible or not..."
sleep(2)

worker = Worker.new(params)
if worker.is_eligible?
	puts "Congratulations #{worker.name}. You are a cloudworker now."
	puts "Your details:"
	puts "#{worker.name}, #{worker.age} years old, #{worker.gender}, #{worker.address.city}, #{worker.address.country}."
else
	puts "Sorry #{worker.name}. You are not eligible to become a cloudworker. Thanks for visiting us."
end


