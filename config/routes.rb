Rails.application.routes.draw do
  get 'score/list'
  root to: 'main#index'
  post 'main/test'
  get 'main/cal_post'
  post 'score/relay'
  get 'score/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
