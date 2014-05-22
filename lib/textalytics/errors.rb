module Textalytics
  module Errors
    class TextalyticError < StandardError
      attr_reader :data
      def initialize(data)
        @data = data
        super
      end
    end

    # Raised when a 100 code error is received
    # 100: Operation denied
    class OperationDeniedError      < TextalyticError; end

    # Raised when a 101 code is received
    # 101: The license has expired
    class LicenseExpiredError           < TextalyticError; end

    # Raised when a 102 code is received
    # 102: You have exceeded the maximum number of credits per month
    class MaximumNumberMonthError      < TextalyticError; end

    # Raised when a 103 code is received
    # 103: You have exceeded the maximum number of credits per request
    class MaximumNumberRequestError          < TextalyticError; end

    # Raised when a 104 code is received
    # 104: You have exceeded the maximum number of requests per second
    class MaximumNumberSecondError    < TextalyticError; end

    # Raised when a 200 code is received
    # 200: A required parameter is missing
    class ParameterMissingError       < StandardError; end

    # Raised when a 201 code is received
    # 201: Model not supported
    class ModelNotSupportedError       < StandardError; end

    # Raised when a 202 code is received
    # 202: No suitable model for the identified text language
    class NotSuitableModelError       < StandardError; end

  end
end