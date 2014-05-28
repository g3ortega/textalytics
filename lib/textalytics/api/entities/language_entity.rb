module Textalytics
  module Api
    module LanguageEntity

      class Language
        attr_reader :language_list, :all

        def initialize(response)
          @language_list = response["lang_list"]
          @all = response
        end
      end


    end
  end
end