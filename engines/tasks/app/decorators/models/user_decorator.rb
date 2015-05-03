Samurai::User.class_eval do
  has_many :tasks, class_name: Samurai::Tasks::Task
end
