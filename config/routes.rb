Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # match "/404", :to => "errors#server_error", :via => :all
  # match "/422", :to => "errors#server_error", :via => :all
  # match "/500", :to => "errors#server_error", :via => :all
  %w(403 404 422 500 503).each do |status_code|
    match "/"+status_code, :to => "errors#server_error", :via => :all, :defaults => { :status_code => status_code }
  end
end
