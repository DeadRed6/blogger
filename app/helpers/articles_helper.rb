module ArticlesHelper
	def article_params
		params.require(:article).permit(:title, :body) #accept only certain attributes
	end

end
