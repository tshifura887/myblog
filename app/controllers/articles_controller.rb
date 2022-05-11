class ArticlesController < ApplicationController
  def index
    @articles = Article.all    #fetching all atricles from the database
  end

  def show
    @article = Article.find(params[:id]) #
  end
end
