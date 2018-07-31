Rails.application.routes.draw do
	resources :climbs
	resources :projects
	resources :contact

	root 'welcome#index'

  get 'welcome/index'
end
