module ArticlesHelper
	def article_params
		params.require(:article).permit(:title, :body, :tag_list) #accept only certain attributes
	end

end
