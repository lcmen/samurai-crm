module Samurai
  module Admin
    class UsersController < AdminController
      def index
        @users = Samurai::User.ordered
      end
    end
  end
end
