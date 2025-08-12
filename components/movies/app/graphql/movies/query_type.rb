module Movies
  module QueryType
    include GraphQL::Types
    extend ActiveSupport::Concern

    included do
      field :movies, resolver: Resolvers::MoviesResolver
    end
  end
end
