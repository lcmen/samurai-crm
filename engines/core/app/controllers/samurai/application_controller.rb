module Samurai
  class ApplicationController < ActionController::Base
    before_filter :authenticate_user!

    rescue_from CanCan::AccessDenied do |exception|
      render file: 'static/403.html', status: 403, layout: false
    end

    def current_ability
      @current_ability ||= Samurai::Ability.new(current_user)
    end
  end
end
