Rails.application.routes.draw do

	# BG - the following two pages were automatically added to this file
	# when I ran rails generate controller Pages home about
	
  get 'pages/home'

  get 'pages/about'

  get 'pages/directions'

  resources :articles do
    # BG - make comments a NESTED RESOURCE with all the articles
    resources :comments
  end

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#index'

end
