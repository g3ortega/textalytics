module Textalytics
  module Api
    module EntityClassification

      class ClassificationEntity
        attr_reader :category_list, :categories

        def initialize(response)
          @category_list = response["category_list"]
        end

        def categories
          @categories = []
          @category_list.each do |c|
            cat = Category.new(code: c["code"], label: c["label"], abs_relevance: c["abs_relevance"], relevance: c["relevance"], term_list: c["term_list"] )
            @categories << cat
          @categories
          end

        end
      end


      class Category
        attr_reader :code, :label, :abs_relevance, :relevance, :term_list

        def initialize(code, label, abs_relevance, relevance, term_list)
          @code = code
          @label = label
          @abs_relevance = abs_relevance
          @relevance = relevance
          @term_list = term_list
        end

      end

    end
  end
end