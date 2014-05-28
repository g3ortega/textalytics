module Textalytics
  module Api
    module TopicsEntity
      class Topics
        attr_reader :entities, :concepts, :time_expressions, :money_expressions,
                    :uris, :phone_expressions, :other_expressions, :quotations,
                    :relations, :all

        def initialize(response)
          @all = response
        end

        def entities
          @all["entity_list"]
        end

        def concepts
          @all["concept_list"]

        end

        def time_expressions
          @all["time_expression_list"]
        end

        def money_expressions
          @all["money_expression_list"]
        end

        def uris
          @all["uri_list"]
        end

        def phone_expressions
          @all["phone_expression_list"]
        end

        def other_expressions
          @all["other_expression_list"]
        end

        def quotations
          @all["quotation_list"]
        end

        def relations
          @all["relation_list"]
        end

      end

    end
  end
end