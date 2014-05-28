module Textalytics

  class Client
    include Helpers::Request
    include Api::ClassificationEntity
    include Api::SentimentEntity
    include Api::LanguageEntity
    include Api::Base
    include HTTParty

    base_uri 'https://textalytics.com/core'


    attr_reader :sentiment_key, :topics_key, :classification_key, :language_key

    def initialize(options = {})
      @sentiment_key = options[:sentiment] || ENV['SENTIMENT_KEY']
      @topics_key = options[:topics] || ENV['TOPICS_KEY']
      @classification_key = options[:classification] || ENV['CLASSIFICATION_KEY']
      @language_key = options[:language] || ENV['LANGUAGE_KEY']
    end

  end


end
