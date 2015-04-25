Samurai::Core::Engine.routes.draw do
  scope module: 'contacts' do
    resources :contacts
  end

  scope :admin do
    resources :contacts, only: :index, controller: 'contacts/admin/contacts', as: :admin_contacts
  end
end
