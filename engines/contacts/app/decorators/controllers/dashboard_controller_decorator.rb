Samurai::DashboardController.class_eval do
  before_action :set_contacts, only: [:index]

  private

  def set_contacts
    @contacts = current_user.contacts
  end
end
