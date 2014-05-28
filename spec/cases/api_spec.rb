require 'spec_helper'

describe Textalytics::Client do

  let(:client) do
    sentiment_key  = ENV['SENTIMENT_KEY'] || 'sentiment_key'
    topics_key = ENV['TOPICS_KEY'] || 'topics_key'
    classification_key = ENV['CLASSIFICATION_KEY'] || 'classification_key'
    language_key = ENV['LANGUAGE_KEY'] || 'language_key'
    client = Textalytics::Client.new(sentiment: sentiment_key, topics: topics_key, classification: classification_key, language: language_key)
    client
  end

    it "should initialize the api keys" do
      element_data = Textalytics::Client.new(sentiment: "123456")
      element_data.sentiment_key.should_not be_nil
    end

end