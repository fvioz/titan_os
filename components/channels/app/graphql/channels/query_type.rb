module Channels
  module QueryType
    include GraphQL::Types
    extend ActiveSupport::Concern

    included do
      field :channels, resolver: Resolvers::ChannelsResolver
    end
  end
end
