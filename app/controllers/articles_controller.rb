class ArticlesController < ApplicationController
	include ArticlesHelper
	def index
		@articles = Article.all #according to REST, a request to /articles/ should list out all.
		#must be declared as an instance variable in order to be available to the view.
	end

	def show
		#the view links to articles/id, which goes to a SHOW method.
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new #creating a blank object for the view to add attribs to.
	end

	def create
		@article = Article.new(article_params) #references helper method
		@article.save
		
		flash.notice =  "Article created successfully!"
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		
		flash.notice = "Article deleted."

		redirect_to articles_path
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		article.update(article_params) #helper function again
		
		flash.notice = "Article '#{@article.title}' Updated!"

		redirect_to article_path(@article)
	end
end
