require "httparty"

module Textalytics

	class Client
	
  	include HTTParty

		base_uri 'https://textalytics.com/core'
	
		@uris = {
			sentimental_analysis: '/sentiment-1.1',
			topics_extraction: '/topics-1.2',
			text_classification: '/class-1.1'
			}


		def initialize(args) 
		  @sentiment_analysis_key = args[:sentiment_analysis]
			@topics_extraction_key = args[:topics_extraction]
			@text_classification_key = args[:text_classification]
		end
		

		# def category_list(options={})
		# 	options.merge!({key: @text_classification_key})
		# 	puts options
		# 	self.class.post('/class-1.1',options)
		# end


	end


end
