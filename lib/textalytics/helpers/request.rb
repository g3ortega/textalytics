require 'httparty'

module Textalytics
  module Helpers

    module Request

      include HTTParty

      base_uri 'https://textalytics.com/core'

      @uris = {
          sentimental_analysis: '/sentiment-1.1',
          topics_extraction: '/topics-1.2',
          text_classification: '/class-1.1'
      }

    end

  end
end
