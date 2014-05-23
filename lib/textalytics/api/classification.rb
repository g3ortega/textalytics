module Textalytics
  module Api

    # Classification API
    #
    # @see https://textalytics.com/core/class-info Text Classification API documentation
    #


    module Classification

      include Textalytics::Api::EntityClassification
      include Textalytics::Helpers

      def classification(options={})
        options[:key] = @classification_key
        options[:of] = 'json'
        query = { query: options}
        puts query
        response = get(CLASSIFICATION, query)
        puts response
        classification = ClassificationEntity.new(response)
      end


    end
  end
end