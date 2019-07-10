class ErrorsController < ApplicationController
    def server_error
        @error = error_params(params[:status_code])
        render
    end

    private

    def error_params(code)
        result = {:status_code => code}
        case code.to_i
        when 404
            result[:title] = "message 404"
            result[:message] = "message 404"
        when 503
            result[:title] = "message 503"
            result[:message] = "message 404"
        else
            result[:title] = "message default"
            result[:message] = "message 404"
        end
        result
    end
end