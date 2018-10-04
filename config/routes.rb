Rails.application.routes.draw do
	resources :articles #expect requests for this resource to be RESTful
end
