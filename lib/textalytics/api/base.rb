module Textalytics
  module Api
    module Base

      include Textalytics::Api::ClassificationEntity
      include Textalytics::Api::SentimentEntity
      include Textalytics::Api::TopicsEntity
      include Textalytics::Helpers


      # Classification API
      # @see https://textalytics.com/core/class-info Text Classification API documentation
      def classification(options={})
        options[:key] = @classification_key
        options[:of] = 'json'
        query = { query: options}
        response = get(CLASSIFICATION, query)
        Classification.new(response)
      end


      # Sentiment API
      # @see https://textalytics.com/core/sentiment-info Sentiment Analysis API documentation
      def sentiment(options = {})
        options[:key] = @sentiment_key
        options[:of] = 'json'
        query = { query: options}
        response = get(SENTIMENT, query)
        Sentiment.new(response)
      end

      # Topics API
      # @see https://textalytics.com/core/topics-info Topics Extraction API documentation
      def topics(options = {})
        options[:key] = @topics_key
        options[:of] = 'json'
        unless options.has_key?(:tt)
          options[:tt] = 'a'
        end
        # TODO: Write tt -topics type- defaults
        query = { query: options}
        response = get(TOPICS, query)
        Topics.new(response)
      end

    end
  end
end