class ErrorsController < ApplicationController
    def server_error
        @status_code = params[:status_code]
        render
    end
end