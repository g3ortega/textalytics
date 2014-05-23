module Textalytics
  module Api

    # Classification API
    #
    # @see https://textalytics.com/core/sentiment-info Sentiment Analysis API documentation
    #

    module Sentiment

      include Textalytics::Api::EntitySentiment
      include Textalytics::Helpers

      def sentiment(options = {})
        options[:key] = @sentiment_key
        options[:of] = 'json'
        query = { query: options}
        puts query
        response = get(SENTIMENT, query)
        sentiment = SentimentEntity.new(response)
      end

      # def category_list(options={})
      #   options[:key] = @sentiment
      #   options[:of] = 'json'
      #   query = { query: options}
      #   puts query
      #   get(Textalytics::Helpers::SENTIMENT, query)
      # end
      #


      # class Sentiment
      #
      #   def initialize(options = {})
      #     options[:key] = @sentiment
      #     options[:of] = 'json'
      #     query = { query: options}
      #     puts query
      #     @response = get(Textalytics::Helpers::SENTIMENT, query)
      #   end
      #
      #
      # end




    end
  end
end