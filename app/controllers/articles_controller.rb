class ArticlesController < ApplicationController
	def index
		@articles = Article.all #according to REST, a request to /articles/ should list out all.
		#must be declared as an instance variable in order to be available to the view.
	end

	def show
		#the view links to articles/id, which goes to a SHOW method.
		@article = Article.find(params[:id])
	end
end
