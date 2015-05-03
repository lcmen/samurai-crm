Samurai::Core::Engine.routes.draw do
  scope module: 'contacts' do
    resources :contacts

    namespace :admin do
      resources :contacts, only: :index
    end
  end
end
