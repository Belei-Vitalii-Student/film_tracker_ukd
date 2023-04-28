class MoviesController < ApplicationController
    def index
        @movie = Movie.new
        @movies = Movie.all
    end

    def create
        @movie = Movie.new(movie_params)
        @movie.save

        redirect_to(@movie)
    end

    def show
        @movie = Movie.find(params[:id])
    end

    private

    def movie_params
        p = params.require(:movie).permit(:name, :director, :year, :duration, :description)
        # p[:user_id] = current_user.id

        p
    end
end
