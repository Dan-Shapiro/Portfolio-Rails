Rails.application.routes.draw do
  devise_for :users
	resources :climbs
	resources :projects
	resources :contacts, only: [:new, :create]

	root 'welcome#index'

  get 'welcome/index'
  get '*path' => redirect('/')
end
