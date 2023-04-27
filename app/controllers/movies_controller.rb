class MoviesController < ApplicationController
    def index
        @movie = Movie.new
        @movies = Movie.all
    end

    def create
        @movie = Movie.new(movie_params)

        redirect_to movie_path(@movie)
    end

    def show
        @movie = Movie.find(params[:id])
    end

    private

    def movie_params
        p = params.require(:movie)
        p[:user_id] = current_user.id

        p
    end
end
