module Textalytics
  module Api

    autoload :Base, "textalytics/api/base"
    autoload :QueryHelpers, "textalytics/api/query_helpers"
    autoload :ClassificationEntity, "textalytics/api/entities/classification_entity"
    autoload :SentimentEntity, "textalytics/api/entities/sentiment_entity"
    autoload :TopicsEntity, "textalytics/api/entities/topics_entity"
  end
end