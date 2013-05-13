class ManhattansController < ApplicationController
  # GET /manhattans
  # GET /manhattans.json
  def index
    @manhattans = Manhattan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @manhattans }
    end
  end

  # GET /manhattans/1
  # GET /manhattans/1.json
  def show
    @manhattan = Manhattan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manhattan }
    end
  end

  # GET /manhattans/new
  # GET /manhattans/new.json
  def new
    @manhattan = Manhattan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @manhattan }
    end
  end

  # GET /manhattans/1/edit
  def edit
    @manhattan = Manhattan.find(params[:id])
  end

  # POST /manhattans
  # POST /manhattans.json
  def create
    @manhattan = Manhattan.new(params[:manhattan])

    respond_to do |format|
      if @manhattan.save
        format.html { redirect_to @manhattan, notice: 'Manhattan was successfully created.' }
        format.json { render json: @manhattan, status: :created, location: @manhattan }
      else
        format.html { render action: "new" }
        format.json { render json: @manhattan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /manhattans/1
  # PUT /manhattans/1.json
  def update
    @manhattan = Manhattan.find(params[:id])

    respond_to do |format|
      if @manhattan.update_attributes(params[:manhattan])
        format.html { redirect_to @manhattan, notice: 'Manhattan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @manhattan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manhattans/1
  # DELETE /manhattans/1.json
  def destroy
    @manhattan = Manhattan.find(params[:id])
    @manhattan.destroy

    respond_to do |format|
      format.html { redirect_to manhattans_url }
      format.json { head :no_content }
    end
  end
end
