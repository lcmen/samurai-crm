Samurai::Core::Engine.routes.draw do
  devise_for :users, class_name: "Samurai::User", module: :devise
  root to: "dashboard#index"
end
