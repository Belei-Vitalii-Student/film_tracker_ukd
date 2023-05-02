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

    def edit
        @movie = Movie.find(params[:comment][:movie_id])
        @comment = Comment.find(params[:id])
    end

    def update
        @movie = Movie.find(params[:comment][:movie_id])
        @comment = Comment.find(params[:id])
        if @comment.update(comment_params)
            redirect_to @movie
        else
            render :edit
        end
    end

    def destroy
        @movie = Movie.find(params[:comment][:movie_id])
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to @movie
    end

    private

    def comment_params
        p = params.require(:comment).permit(:status, :description)
        p[:user_id] = current_user.id

        p
    end
end
