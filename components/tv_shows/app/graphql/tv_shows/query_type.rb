module TvShows
  module QueryType
    include GraphQL::Types
    extend ActiveSupport::Concern

    included do
      field :tv_shows, resolver: Resolvers::TvShowsResolver
    end
  end
end
