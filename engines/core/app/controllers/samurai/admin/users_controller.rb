module Samurai
  module Admin
    class UsersController < AdminController
      def index
        @users = Samurai::User.ordered.limit(3)
      end
    end
  end
end
