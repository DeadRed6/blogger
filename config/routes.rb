Rails.application.routes.draw do
	root to: 'articles#index'
	resources :articles #expect requests for this resource to be RESTful
end
