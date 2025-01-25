Rails.application.routes.draw do
  devise_for :admins
  root "home#index"

  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end

  get "admin", to: "admin#index"
end
