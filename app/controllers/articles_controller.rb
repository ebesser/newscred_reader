class ArticlesController < ApplicationController

	def home 
	end

	def search
	end

	def show
		article_id = params[:id]
		puts article_id
		@article = Article.where(id: article_id).first
	end

	def show_all_search
		search = params[:topic].to_s
		@articles = Article.where(search_name:search)

	end

end