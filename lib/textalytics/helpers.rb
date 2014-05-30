module Textalytics
  module Helpers

    SENTIMENT = '/sentiment-1.1'
    TOPICS = '/topics-1.2'
    CLASSIFICATION = '/class-1.1'
    LANGUAGE = '/lang-1.1'
    DEMOGRAPHICS = '/userdemographics-1.0'

    autoload :Request,       "textalytics/helpers/request"
  end
end