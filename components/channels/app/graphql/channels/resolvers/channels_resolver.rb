# app/graphql/resolvers/post_resolver.rb

module Channels
  module Resolvers
    class ChannelsResolver < ::Resolvers::BaseResolver
      description "Fetch all channels"

      type [ Types::ChannelType ], null: false

      def resolve
        Channel.all
      end
    end
  end
end
