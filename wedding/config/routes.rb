Rails.application.routes.draw do
  root "dashboards#home_page"
  resources :posts
end
