module Users
  module Mutations
    class Login < ::Mutations::BaseMutation
      argument :email, String, required: true
      argument :password, String, required: true

      field :token, String, null: false

      def resolve(email:, password:)
        if token = CreateJwtTokenService.new(email, password).perform
          {
            token: token
          }
        else
          raise GraphQL::ExecutionError, 'Invalid email or password'
        end
      end
    end
  end
end
