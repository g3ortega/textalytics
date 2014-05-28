require 'spec_helper'

describe Textalytics::Client do

    it "should initialize the api keys from environment variables" do
      client = Textalytics::Client.new
      client.language_key.should_not be_nil
      client.classification_key.should_not be_nil
      client.sentiment_key.should_not be_nil
      client.topics_key.should_not be_nil
    end

    it "should not initialize any api keys from environment variables" do
      ENV.delete('SENTIMENT_KEY')
      ENV.delete('TOPICS_KEY')
      ENV.delete('CLASSIFICATION_KEY')
      ENV.delete('LANGUAGE_KEY')

      new_client = Textalytics::Client.new
      new_client.sentiment_key.should be_nil
    end

    it "should change the default environment values when arguments are provided" do
      ENV['SENTIMENT_KEY'] = '87654321'
      client = Textalytics::Client.new(sentiment: '12345678')
      expect(client.sentiment_key).to eq('12345678')
    end

end