Samurai::Core::Engine.routes.draw do
  scope module: 'tasks' do
    resources :tasks

    namespace :admin do
      resources :tasks, only: :index
    end
  end
end
