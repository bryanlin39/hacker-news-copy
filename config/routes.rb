Rails.application.routes.draw do
  root :to => 'posts#index'
  get '/posts/search' => 'posts#search_result', as: 'search'

  resources :posts do
    member do
      patch :upvote
    end

    resources :comments
  end
end
