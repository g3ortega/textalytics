module Textalytics

  module Api

    module SentimentEntity

      class Sentiment
        attr_reader :subjectivity, :irony, :score,
                    :score_tag, :sd, :sd_tag, :segment_list,
                    :entity_list, :concept_list, :all

        def initialize(response)
          @all = response
        end

        def subjectivity
          @all["subjectivity"]
        end

        def irony
          @all["ironi"]
        end

        def score
          @all["score"]
        end

        def score_tag
          @all["score_tag"]
        end

        def sd
          @all["sd"]
        end

        def sd_tag
          @all["sd_tag"]
        end

        def segment_list
          @all["segment_list"]
        end

        def entity_list
          @all["entity_list"]
        end

        def concept_list
          @all["concept_list"]
        end

      end

    end
  end



end