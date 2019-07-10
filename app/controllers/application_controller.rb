class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # rescue_from ActionController::RoutingError, with: -> { render_error  }

  # def render_error
  #   respond_to do |format|
  #     format.html { render template: 'errors/not_found', status: 404 }
  #     format.all { render nothing: true, status: 404 }
  #   end
  # end
end
