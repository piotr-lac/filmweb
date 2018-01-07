Rails.application.routes.draw do

  root 'welcome#home'

  resources :films do 
    resources :opinions
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
