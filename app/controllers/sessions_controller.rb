class SessionsController < ApplicationController

  def new
  end

  def create
    # Look for user with the given email address
    user = User.find_by(email: params["email"])
    if user != nil

      # Verify they entered the right password
      if user.authenticate(params["password"])

        # Let them in.
        session["user_id"] = user.id

        # Take them to the home page.
        redirect_to "/", notice: "Welcome back!"
      else
        # The password did not match what we have in the db.
        redirect_to "/sessions/new", notice: "Invalid Password."
      end
    else
      # Could not find a user account with the given email.
      redirect_to "/sessions/new", notice: "Unknown email address."
    end

  end

  def destroy
    # We should no longer remember who signed in.
    reset_session

    # Go back to the home page
    redirect_to "/", notice: "Goodbye!"
  end

end
