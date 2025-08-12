module Movies
  module Resolvers
    class MoviesResolver < ::Resolvers::BaseResolver
      description "Fetch all movies"

      type [ Types::MovieType ], null: false

      def resolve
        Movie.all
      end
    end
  end
end
