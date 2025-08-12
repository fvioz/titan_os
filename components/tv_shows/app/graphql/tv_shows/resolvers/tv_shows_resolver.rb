module TvShows
  module Resolvers
    class TvShowsResolver < ::Resolvers::BaseResolver
      description "Fetch all TV shows"

      type [ Types::TvShowType ], null: false

      def resolve
        TvShow.all
      end
    end
  end
end
