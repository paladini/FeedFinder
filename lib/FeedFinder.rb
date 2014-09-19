require 'rubygems'
require 'uri'
require 'json'
require 'rest_client'

module FeedFinder

	# Search feeds RSS for a single link or a group of link (inside an Array).
	def self.find(url)

		# If it's an array of links
		if url.kind_of?(Array)
			return find_a_lot(url)

		# If it's a single link
		elsif url.kind_of?(String)
			return find_one(url)
		end
	end

	# TODO: 
	# def find_hard(url)

	private
		
		# Search for RSS/Atom feeds of a lot of links (inside an Array)
		def self.find_a_lot(urls)
			feeds = []
			urls.each do |u|
				feeds << find_one(u)
			end
			return feeds
		end

		# Search for RSS/Atom feeds of one URL.
		def self.find_one(url)
			# Prepare url for the API request 
			url = prepareUrl(url)

			# Make the API request
		    base_url = "http://cloud.feedly.com/v3/search/feeds/"
		    response = JSON.parse( RestClient.get(base_url, params: {q: url.to_s}) )

		    return match_results(response)
		end

		# Preparing url before the API request.
		def self.prepareUrl(url)
			if url[/^https?:\/\//]
		      url = url
		    else
		      url = 'http://' + url
		    end
			return URI.encode(url)
		end

		# Extract url results from API response.
		def self.match_results(response)
			feeds = []
		    response["results"].each do |f|
		      that_feed = f["feedId"]
		      
		      # Feedly API returns as "feed/http://www.myexamplesite.com/rss.xml"
		      # The "feed/" must be removed before added
		      feeds << that_feed[5..-1] 
		    end
		    return feeds
		end

end