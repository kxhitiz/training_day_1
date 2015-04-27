class Address
	attr_accessor :country, :city, :zip_code
	def initialize(options = {})
		@country = options[:country]
		@city = options[:city]
		@zip_code = options[:zip_code]
	end
end