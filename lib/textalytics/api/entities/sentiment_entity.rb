module Textalytics

  module Api

    module EntitySentiment

      class SentimentEntity
        attr_reader :subjectivity, :irony, :score,
                    :score_tag, :sd, :sd_tag, :segment_list,
                    :entity_list, :concept_list

        def initialize(response)
          @response = response
        end

        def subjectivity
          @response["subjectivity"]
        end

        def irony
          @response["ironi"]
        end

        def score
          @response["score"]
        end

        def score_tag
          @response["score_tag"]
        end

        def sd
          @response["sd"]
        end

        def sd_tag
          @response["sd_tag"]
        end

        def segment_list
          @response["segment_list"]
        end

        def entity_list
          @response["entity_list"]
        end

        def concept_list
          @response["concept_list"]
        end

      end

    end
  end



end