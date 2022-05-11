class ArticlesController < ApplicationController
  def index
    @articles = Article.all    #fetching all atricles from the database
  end
end
