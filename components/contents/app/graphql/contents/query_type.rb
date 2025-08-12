module Contents
  module QueryType
    include GraphQL::Types
    extend ActiveSupport::Concern

    included do
      field :contents, resolver: Resolvers::ContentsResolver
    end
  end
end
