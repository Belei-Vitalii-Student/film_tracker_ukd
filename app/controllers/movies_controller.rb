class MoviesController < ApplicationController
    def index
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
    
    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
            redirect_to @movie
        else
            render :edit
        end
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to movies_path
    end

    private

    def movie_params
        p = params.require(:movie).permit(:name, :director, :year, :duration, :description, star_ids: [], category_ids: [])

        p
    end
end
