class PropertiesController < ApplicationController
  # GET /properties
  # GET /properties.json
    before_filter :authenticate_user!
  def index
      @title="Lateralmarket"
       flood_zone_a = []
       flood_zone_b = []
       flood_zone_c = []
      if params[:zone_a]
          za=PropertyField.where(:flood_zone=>'A')
          for a in za
              flood_zone_a<<a.property
          end
      end
      
      
      
      if params[:zone_b]
          zb=PropertyField.where(:flood_zone=>'B')
          for b in zb
              flood_zone_b<<b.property
          end
          
      end
      
      
      
      if params[:zone_c]
          zc=PropertyField.where(:flood_zone=>'C')
          for c in zc
              flood_zone_c<<c.property
          end
          
      end
      
      
      
      if params[:search]==nil
         @properties = Property.all
        else
          if params[:temp_search].to_s=='All'
              @properties = Property.near(params[:search], params[:zip]) - flood_zone_a -  flood_zone_b -  flood_zone_c

              
              
              else
              @properties = Property.where("entry_type LIKE ?", params[:temp_search].to_s).near(params[:search], params[:zip])  - flood_zone_a -  flood_zone_b -  flood_zone_c

  
              
              
          end
              
              
              
      end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @properties }
    end
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    @property = Property.find(params[:id])
    @json = @property.to_gmaps4rails
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property }
    end
  end

  # GET /properties/new
  # GET /properties/new.json
  def new
    @property = Property.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property }
    end
  end

  # GET /properties/1/edit
  def edit
    @property = Property.find(params[:id])
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(params[:property])
    @property.user_id=current_user.id
    respond_to do |format|
      if @property.save
          
          
          
        @client = GooglePlaces::Client.new('AIzaSyDZ2O1jph3LLKnnPBvTcMQX37LAcirkQKg')
    
          
          if @client.spots(@property.latitude, @property.longitude, :types => 'synagogue', :rankby=>'distance').first
          
          @property.nearest_synagogue=@client.spots(@property.latitude, @property.longitude, :types => 'synagogue', :rankby=>'distance').first.try(:name)
          
      
        @property.synagogue_distance = Geocoder::Calculations.distance_between([@property.latitude,@property.longitude], [@client.spots(@property.latitude, @property.longitude, :types => 'synagogue', :rankby=>'distance').first.lat,@client.spots(@property.latitude, @property.longitude, :types => 'synagogue', :rankby=>'distance').first.lng])
  
          end
          
          if @client.spots(@property.latitude, @property.longitude, :types => 'subway_station', :rankby=>'distance').first
          
          @property.nearby_transit = @client.spots(@property.latitude, @property.longitude, :types => 'subway_station', :rankby=>'distance').first.try(:name)
          
          
        @property.transit_distance = Geocoder::Calculations.distance_between([@property.latitude,@property.longitude], [@client.spots(@property.latitude, @property.longitude, :types => 'subway_station', :rankby=>'distance').first.lat,@client.spots(@property.latitude, @property.longitude, :types => 'subway_station', :rankby=>'distance').first.lng])
              
          end
          @property.save
        format.html { redirect_to new_property_field_path(:q=>@property.id), notice: 'Property was successfully created.' }
        format.json { render json: @property, status: :created, location: @property }
      else
        format.html { render action: "new" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /properties/1
  # PUT /properties/1.json
  def update
    @property = Property.find(params[:id])

    respond_to do |format|
      if @property.update_attributes(params[:property])
        format.html { redirect_to new_property_field_path(:q=>@property.id), notice: '' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property = Property.find(params[:id])
    @property.destroy

    respond_to do |format|
      format.html { redirect_to properties_url }
      format.json { head :no_content }
    end
  end
end
