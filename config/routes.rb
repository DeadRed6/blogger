Rails.application.routes.draw do

	root to: 'articles#index'
	resources :articles do #expect requests for this resource to be RESTful
		resources :comments #indicate one to many relation
	end
	resources :tags
end
