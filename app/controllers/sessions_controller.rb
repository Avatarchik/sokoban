class SessionsController < ApplicationController
  def new
    if current_user 
      redirect_to :root
    else
      render :layout => false
    end
  end

  def create    
    credentials = request.env['omniauth.auth']['credentials']
    @user = User.update_or_create(credentials)

    if @user.save!
      @user.build_friendships()
      session[:user_id] = @user.id
      # Get and save friends id of this user
      redirect_to :root
    else
      render :text => "Facebook connection failed (user informations could not be saved)"
    end
  end
  
  def failure
    render :text => "Facebook connection failed (access not granted)"
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end