require 'rubygems'
require 'uri'
require 'json'
require 'rest_client'

##
#
# Sorry, but Feedly don't allow us to do that anymore.
# They only allow requests to their API if this would improve Feedly service.
# As we don't do that, we can't provide this gem because it isn't aligned with their terms of service.
# I'm very sadly to discontinue this gem, but I really can't do anything about that. 	
#
# You can checkout our discussion in the Feedly development forums here:
# 	https://groups.google.com/forum/#!topic/feedly-cloud/pcr0fvCYdfM
#
###
module FeedFinder

	# Search feeds RSS for a single link or a group of link (inside an Array).
	def self.find(url)

		# Try to authenticate 
		authenticate()

	end

	private
		
		def self.authenticate()
			puts "================================"
			puts ""
			puts "Sorry, but Feedly don't allow us to do that anymore."
			puts "They only allow requests to their API if this would improve Feedly service."
			puts "As we don't do that, we can't provide this gem because it isn't aligned with their terms of service."
			puts "I'm very sadly to discontinue this gem, but I really can't do anything about that."
			puts "You can checkout our discussion in the Feedly development forums here:"
			puts "\thttps://groups.google.com/forum/#!topic/feedly-cloud/pcr0fvCYdfM"
			puts ""
			puts "================================"
		end

end