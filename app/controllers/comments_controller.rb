class CommentsController < ApplicationController

  # Whenever a new comment is created we need to handle it
  def create

    # Get Article comment is attached to
    @article = Article.find(params[:article_id])

    # Create and save comment
    @comment = @article.comments.create(comment_params)

    # Go to the article this comment is associated with
    # this is a redirect that will send the browser somewhere new - to_article_path
    # get the article the comment is associated with
    # create the comment and then redirect back to said article
    # and displaying the comments underneath that article
    #
    redirect_to article_path(@article)

  end


  # do not want anyone messing with comment_params - so we make this private
  # private methods always show up last in the file
  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end


end
