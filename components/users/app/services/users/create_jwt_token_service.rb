module Users
  class CreateJwtTokenService < Shared::BaseService
    MAX_EXPIRATION_TIME = 1.week

    def initialize(email, password, expiration_time: MAX_EXPIRATION_TIME)
      @email = email
      @password = password
      @expiration_time = expiration_time
    end

    def perform
      @user = User.find_by(email: @email)&.authenticate(@password)

      return nil unless @user

      token_for(@user)
    end

    private

    def token_for(user)
      JWT.encode({
        user_id: user.id,
        exp: @expiration_time.from_now.to_i
      }, 'secret', 'HS256')
    end
  end
end
