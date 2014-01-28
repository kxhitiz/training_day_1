require './address.rb'

module Eligible

  AGE_THRESHOLD = 18
  AVERAGE_SCORE_THRESHOLD = 80
  # We can enter other cities if possible
  CITY = ["kathmandu"] 

  def is_eligible?
    age > AGE_THRESHOLD && calc_average_test_score > AVERAGE_SCORE_THRESHOLD && CITY.include?address.city.downcase ? true : false
  end

  def calc_average_test_score
    test_scores.inject(0) { |sum, n| sum + n }.to_f / test_scores.length
  end
end

class Worker
  include Eligible
  attr_accessor :name, :age, :gender, :test_scores, :address
  def initialize(options = {})
    @name = options[:name]
    @age = options[:age]
    @gender = options[:gender]
    @test_scores = options[:test_scores]
    @address = options[:address]
  end
end

address_hash = {:country => "Nepal", :city => "Kathmandu", :zip_code => "00977"}
address = Address.new(address_hash)
workers_info = {:name => "Susan Joshi", :age => 22, :gender => "Male", :test_scores => [80, 90, 90], :address => address}

worker = Worker.new(workers_info)
if worker.is_eligible?
  puts "Congratulations! You are eligible"
else
  puts "Sorry! You are ineligible. Try again"
end

