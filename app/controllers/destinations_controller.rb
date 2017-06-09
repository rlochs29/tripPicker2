class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all

    render("destinations/index.html.erb")
  end

  def show
    @destination = Destination.find(params[:id])

    render("destinations/show.html.erb")
  end

  def new
    @destination = Destination.new

    render("destinations/new.html.erb")
  end

  def create
    @destination = Destination.new

    @destination.city = params[:city]
    @destination.country = params[:country]
    @destination.climate = params[:climate]
    @destination.scenery = params[:scenery]
    @destination.description = params[:description]
    @destination.distance = params[:distance]
    @destination.activities = params[:activities]

    save_status = @destination.save

    if save_status == true
      redirect_to("/destinations/#{@destination.id}", :notice => "Destination created successfully.")
    else
      render("destinations/new.html.erb")
    end
  end

  def edit
    @destination = Destination.find(params[:id])

    render("destinations/edit.html.erb")
  end

  def update
    @destination = Destination.find(params[:id])

    @destination.city = params[:city]
    @destination.country = params[:country]
    @destination.climate = params[:climate]
    @destination.scenery = params[:scenery]
    @destination.description = params[:description]
    @destination.distance = params[:distance]
    @destination.activities = params[:activities]

    save_status = @destination.save

    if save_status == true
      redirect_to("/destinations/#{@destination.id}", :notice => "Destination updated successfully.")
    else
      render("destinations/edit.html.erb")
    end
  end

  def filter
    @destinations = Destination.all
    @climate = current_user.desired_climate
    @scenery = current_user.desired_scenery
    @distance = current_user.desired_distance
    render("destinations/filter.html.erb")
  end

  def destroy
    @destination = Destination.find(params[:id])

    @destination.destroy

    if URI(request.referer).path == "/destinations/#{@destination.id}"
      redirect_to("/", :notice => "Destination deleted.")
    else
      redirect_to(:back, :notice => "Destination deleted.")
    end
  end
end
