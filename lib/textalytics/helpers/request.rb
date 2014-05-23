require 'httparty'

module Textalytics
  module Helpers

    module Request

      include HTTParty

      base_uri 'https://textalytics.com/core'

      @uris = {
          sentimental_analysis: '/sentiment-1.1',
          topics_extraction: '/topics-1.2',
          text_classification: '/class-1.1'
      }

      protected

      def get(url, options={})
        response = self.class.get(url, options)
        raise_errors(response)
        response.to_hash
      end

      def post(url, body='', options={})
        response = self.class.post(url, options)
        raise_errors(response)
        response.to_hash
      end


      private

      def raise_errors(response)
        # You can see the errors with their description at
        # https://textalytics.com/core/sentiment-info
        # https://textalytics.com/core/class-info
        # https://textalytics.com/core/topics-info
        # In status section

        case response.status.code.to_i
          when 100
            data = response.status
            raise Textalytics::Errors::OperationDeniedError.new(data), "(#{data.code}): #{data.msg}"
          when 101
            data = response.status
            raise Textalytics::Errors::LicenseExpiredError.new(data), "(#{data.code}): #{data.msg}"
          when 102
            data = response.status
            raise Textalytics::Errors::MaximumNumberMonthError.new(data), "(#{data.code}): #{data.msg}"
          when 103
            data = response.status
            raise Textalytics::Errors::MaximumNumberRequestError.new(data), "(#{data.code}): #{data.msg}"
          when 104
            data = response.status
            raise Textalytics::Errors::MaximumNumberSecondError.new(data), "(#{data.code}): #{data.msg}"
          when 200
            data = response.status
            raise Textalytics::Errors::ParameterMissingError.new(data), "(#{data.code}): #{data.msg}"
          when 201
            data = response.status
            raise Textalytics::Errors::ModelNotSupportedError.new(data), "(#{data.code}): #{data.msg}"
          when 202
            data = response.status
            raise Textalytics::Errors::NotSuitableModelError.new(data), "(#{data.code}): #{data.msg}"
        end
      end

    end

  end
end
