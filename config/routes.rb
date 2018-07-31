Rails.application.routes.draw do
  get 'contact/index'
  get 'projects/index'
  get 'projects/show'
  get 'climbs/index'
  get 'climbs/show'
	root 'welcome#index'

  get 'welcome/index'
end
