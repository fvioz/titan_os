module Users
  module MutationType
    include GraphQL::Types
    extend ActiveSupport::Concern

    included do
      field :login, mutation: Mutations::Login
    end
  end
end
