class UsersController < ApplicationController

  def destroy
    user = User.find_by(id: params["id"])
    user.delete
    redirect_to "/users"
  end

  def edit

  end

  def update
    user = User.find_by(params["id"])
    user.name = params["user"]["name"]
    user.email = params["user"]["email"]
    user.password = params["user"]["password"]
    user.save
    redirect_to "/users"
  end

  def create
    user = User.new
    user.name = params["user"]["name"]
    user.email = params["user"]["email"]
    user.password = params["user"]["password"]
    user.save
    session["user_id"] = user.id
    redirect_to "/movies"
  end


  def index
  end

  def show
    if (session["user_id"].blank?) || (session["user_id"] != params["id"])
      redirect_to "/", notice: "Nice try."
    end
  end

end
