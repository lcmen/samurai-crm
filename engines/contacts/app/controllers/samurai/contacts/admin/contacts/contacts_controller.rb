require_dependency "samurai/application_controller"

module Samurai
  module Contacts
    module Admin
      class ContactsController < Samurai::Admin::AdminController
        # GET /contacts
        def index
          @contacts = Contact.all
        end
      end
    end
  end
end
