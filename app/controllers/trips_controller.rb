class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  
  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
    @hash = Gmaps4rails.build_markers(@trips) do |trip, marker|
      marker.lat trip.pick_lat
      marker.lng trip.pick_lng
      marker.infowindow trip.pick_range
      marker.picture({
       "url" => "http://people.mozilla.com/~faaborg/files/shiretoko/firefoxIcon/firefox-32.png",
       "width" => 32,
       "height" => 32
     }) 
     marker.json({ title: trip.pick_range })
    end
    @hash2 = Gmaps4rails.build_markers(@trips) do |trip, marker2|
      marker2.lat trip.drop_lat
      marker2.lng trip.drop_lng
      marker2.infowindow trip.drop_range
      marker2.picture({
       "url" => "http://people.mozilla.com/~faaborg/files/shiretoko/firefoxIcon/firefox-32.png",
       "width" => 32,
       "height" => 32
     }) 
     marker2.json({ title: trip.drop_range })
    end 
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:pick_lat, :pick_lat, :pick_lng, :pick_lng, :pick_time, :pick_range, :drop_lat, :drop_lat, :drop_lng, :drop_lng, :drop_time, :drop_range)
    end
end
