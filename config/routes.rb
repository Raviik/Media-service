Rails.application.routes.draw do
  # get 'about/index'
  # get 'promo/index'
   resources :posts do
     resources :comments
end
  resources :subscribers
  get 'posts/index'

# root 'posts#index'
get 'promo', to: 'promo#index'
get 'about', to: 'about#index'

root 'promo#index'
get 'welcome/index', to: 'welcome#index'

end
