Rails.application.routes.draw do
  root 'expenses#index'
  devise_for :users

  resources :groups do
    get 'download', :on => :collection
  end

  resources :expenses do
    get 'external', :on => :collection
    get 'download', :on => :collection
  end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
