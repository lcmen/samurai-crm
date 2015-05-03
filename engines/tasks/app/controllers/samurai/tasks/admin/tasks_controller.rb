module Samurai::Tasks
  module Admin
    class TasksController < Samurai::Admin::AdminController
      def index
        @tasks = Task.all
      end
    end
  end
end
