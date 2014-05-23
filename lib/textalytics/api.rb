module Textalytics
  module Api

    autoload :Classification,  "textalytics/api/classification"
    autoload :Sentiment,  "textalytics/api/sentiment"
    autoload :Topics,  "textalytics/api/topics"
    autoload :QueryHelpers, "textalytics/api/query_helpers"
    autoload :EntityClassification, "textalytics/api/entities/classification_entity"
    autoload :EntitySentiment, "textalytics/api/entities/sentiment_entity"
  end
end