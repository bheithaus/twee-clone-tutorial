class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email].downcase)
    if @user && @user.authenticate(params[:password])
      sign_in @user
      redirect_back_or @user
    else
      if @user
        flash.now[:error] = "invalid password"
      else
        flash.now[:error] = "DOH!! We couldn't find your email in our records! Sign up?"
      end
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
