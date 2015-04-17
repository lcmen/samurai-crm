module Samurai
  class DashboardController < ApplicationController
    authorize_resource class: false

    def index

    end
  end
end
