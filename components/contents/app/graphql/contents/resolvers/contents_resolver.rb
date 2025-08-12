module Contents
  module Resolvers
    class ContentsResolver < ::Resolvers::BaseResolver
      description "Fetch all contents"

      type [ Types::ContentType ], null: false

      def resolve
        Content.all
      end
    end
  end
end
