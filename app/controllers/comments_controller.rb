class CommentsController < ApplicationController
    def create
        @movie = Movie.find(params[:comment][:movie_id])
        @comment = @movie.comments.build(comment_params)

        if @comment.save
            redirect_to @movie, notice: 'Comment was successfully created.'
        else
            render :new
        end
    end
    def comment_params
        p = params.require(:comment).permit(:status, :description)
        p[:user_id] = current_user.id

        p
    end
end
