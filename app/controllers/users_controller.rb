class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(current_user.id)

    render("users/show.html.erb")
  end

  def update
    @user = User.find(current_user.id)

    @user.desired_climate = params[:desired_climate]
    @user.desired_scenery = params[:desired_scenery]
    @user.desired_distance = params[:desired_distance]

    save_status = @user.save

    if save_status == true
      redirect_to("/filter_destinations", :notice => "These options are available based on your preferences.")
    else
      render("users/edit.html.erb")
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    if URI(request.referer).path == "/users/#{@user.id}"
      redirect_to("/", :notice => "User deleted.")
    else
      redirect_to(:back, :notice => "User deleted.")
    end
  end
end
