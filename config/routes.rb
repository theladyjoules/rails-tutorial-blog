Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    root "articles#index"

    get "/articles", to: "articles#index"
  end

  resources :articles do
    resources :comments
  end
end
