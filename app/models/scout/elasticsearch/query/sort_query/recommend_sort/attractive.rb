module Scout
  module Elasticsearch
    class Query
      module SortQuery
        class RecommendSort
          class Attractive

            def score_function
              [
                {
                  script_score: {
                    params: {
                      weight: 30,
                    },
                    script: 'weight * _source.number_of_empl'
                  }
                }
              ]
            end
          end
        end
      end
    end
  end
end
