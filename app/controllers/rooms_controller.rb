class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      @errors = @room.error.full_messages
      # render :new
      render "rooms/new"
    end
  end

  def edit
    begin
      @room = Room.find(params[:id])
    rescue ActiveRecordNotFound
      redirect_to(rooms_path)
    end
  end

  def update
    @room = Room.find(params[:id])
    # @room = room_params

    if @room.update(room_params)
      redirect_to(rooms_path)
    else
      render :edit
    end
  end

  def destroy
    @room = Room.destroy(params[:id])
    redirect_to(rooms_path)
  end

  protected
    def room_params
      params.require(:room).permit(:title, :description, :beds, :guests, :image_url, :price_per_night)
    end
end
