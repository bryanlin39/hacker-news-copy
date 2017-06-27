Rails.application.routes.draw do
  root :to => 'posts#index'

  resources :posts do
    member do
      patch :upvote
    end
    
    resources :comments
  end
end
