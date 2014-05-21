require "httparty"

module Textalytics

  class Client
    include Helpers::Request
    include Api::Sentiment
    include Api::Topics
    include Api::Classification


    attr_reader :sentiment_key, :topics_key, :classification_key

    def initialize(args)
      @sentiment_key = args[:sentiment]
      @topics_key = args[:topics]
      @classification_key = args[:classification]
    end

  end


end
