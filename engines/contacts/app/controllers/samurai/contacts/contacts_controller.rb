require_dependency "samurai/application_controller"

module Samurai::Contacts
  class ContactsController < Samurai::ApplicationController
    before_action :set_contact, only: [:show, :edit, :update, :destroy]
    authorize_resource class: Samurai::Contacts::Contact

    # GET /contacts
    def index
      @contacts = current_user.contacts
    end

    # GET /contacts/1
    def show
    end

    # GET /contacts/new
    def new
      @contact = current_user.contacts.build
    end

    # GET /contacts/1/edit
    def edit
    end

    # POST /contacts
    def create
      @contact = current_user.contacts.build(contact_params)

      if @contact.save
        redirect_to [samurai, @contact], notice: 'Contact was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /contacts/1
    def update
      if @contact.update(contact_params)
        redirect_to [samurai, @contact], notice: 'Contact was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /contacts/1
    def destroy
      @contact.destroy
      redirect_to samurai.contacts_url, notice: 'Contact was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_contact
        @contact = Contact.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def contact_params
        params.require(:contact).permit(:first_name, :last_name, :email, :company, :phone, :user_id)
      end
  end
end
