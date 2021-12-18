Rails.application.routes.draw do
  root to: "reminders#index"
  get '/calendar/:month', to: "reminders#index"
end
