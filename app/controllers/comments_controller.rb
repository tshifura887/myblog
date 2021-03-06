class CommentsController < ApplicationController

    http_basic_authenticate_with name: "talifhani", password: "secret", only: destroy
    def create
        @article = Article.find(params[:article_id]) #to get the article in question
        @comment = @article.comments.create(comment_params) #use the create mothod on @article.comments to create and save comments
        redirect_to article_path(@article)
    end

    def destroy
        @article = article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
    end

    private
    def comment_params
        params.require(:comment).permit(:commenter, :body, :status)
    end
end
