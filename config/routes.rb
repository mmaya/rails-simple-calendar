Rails.application.routes.draw do
  root to: "reminders#index"
  resources :reminders
end
