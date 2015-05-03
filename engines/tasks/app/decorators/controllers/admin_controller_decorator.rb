Samurai::Admin::AdminController.class_eval do
  before_action :set_tasks, only: :index

  private

  def set_tasks
    @tasks = Samurai::Tasks::Task.ordered.limit(3)
  end
end
