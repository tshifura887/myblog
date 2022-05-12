class ArticlesController < ApplicationController
  def index
    @articles = Article.all    #fetching all atricles from the database
  end

  def show
    @article = Article.find(params[:id]) #fetching each article by id
  end

  def new
    @article = Article.new #the new action instaintiates a new article , but does not save it which will be used when building a form
  end

  def create
    @article = Article.new(article_params) #instantiates a new article with tittle and body in it

    if @article.save
      redirect_to @article #redirects the browser to the atricles page
    else
      render :new #redisplays the form by rendering new
    end
  end

  def edit
    @article = Article.find(params[:id]) #fetches the article from the database
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else 
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[id]) #fetch article from database
    @article.destroy #calls destroy on it

    redirect_to root_path #redirects the browser to the roots path
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :status) #filters the params
  end

end
