require './Worker.rb'

w = Worker.new

w.name = 'A'
w.age = 21
w.gender = 'M'
w.city = 'Kathmandu'

w.test_scores([80, 90, 100])

w.isEligibleToBeCloudworker