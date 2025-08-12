module Users
  class ValidateJwtTokenService < Shared::BaseService
    def initialize(token)
      @token = token
    end

    def perform
      decoded_token = JWT.decode(token, "secret", true, algorithm: "HS256")

      User.find(decoded_token[0]["user_id"])
    rescue JWT::DecodeError, ActiveRecord::RecordNotFound
      nil
    end
  end
end
