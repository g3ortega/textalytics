module Textalytics
  module Api
    module Base

      include Textalytics::Api::ClassificationEntity
      include Textalytics::Api::SentimentEntity
      include Textalytics::Api::TopicsEntity
      include Textalytics::Api::LanguageEntity
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

      # Topics Extraction API
      # @see https://textalytics.com/core/topics-info Topics Extraction API documentation
      def topics(options = {})
        options[:key] = @topics_key
        options[:of] = 'json'

        unless options.has_key?(:tt)
          options[:tt] = 'a'
        end

        query = { query: options}
        response = get(TOPICS, query)
        Topics.new(response)
      end

      # Language Identification API
      # @see https://textalytics.com/core/lang-info#doc
      def language(options = {})
        options[:key] = @language_key
        options[:of] = 'json'
        query = { query: options}
        response = get(LANGUAGE, query)
        Language.new(response)
      end

    end
  end
end