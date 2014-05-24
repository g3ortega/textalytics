module Textalytics
  module Api
    module EntityClassification

      class ClassificationEntity
        attr_reader :category_list, :categories

        def initialize(response)
          @category_list = response["category_list"]
        end

        def categories
          category_array = []

          @category_list.each do |c|
            cat = Category.new(code: c["code"], label: c["label"], abs_relevance: c["abs_relevance"], relevance: c["relevance"], term_list: c["term_list"] )
            category_array << cat
          end

          category_array

        end
      end


      class Category
        attr_reader :code, :label, :abs_relevance, :relevance, :term_list

        def initialize(args)
          @code = args[:code]
          @label = args[:label]
          @abs_relevance = args[:abs_relevance]
          @relevance = args[:relevance]
          @term_list = term_list
        end

      end

    end
  end
end