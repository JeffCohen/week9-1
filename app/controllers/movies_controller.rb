class MoviesController < ApplicationController

  def destroy
    m = Movie.find_by(id: params[:id])
    m.delete
    redirect_to "/movies"
  end

  def edit

  end

  def update
    movie = Movie.find_by(params["id"])
    movie.title = params["movie"]["title"]
    movie.runtime = params["movie"]["runtime"]
    movie.mpaa = params["movie"]["mpaa"]
    movie.year = params["movie"]["year"]
    movie.poster_url = params["movie"]["poster_url"]
    movie.plot = params["movie"]["plot"]
    movie.save

    redirect_to "/movies"
  end

  def create
    movie = Movie.new
    movie.title = params["movie"]["title"]
    movie.runtime = params["movie"]["runtime"]
    movie.mpaa = params["movie"]["mpaa"]
    movie.year = params["movie"]["year"]
    movie.poster_url = params["movie"]["poster_url"]
    movie.plot = params["movie"]["plot"]
    movie.save

    redirect_to "/movies"
  end


  def index
  end

  def show
  end

end
