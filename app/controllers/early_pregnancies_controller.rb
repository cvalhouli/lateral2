class EarlyPregnanciesController < ApplicationController
  # GET /early_pregnancies
  # GET /early_pregnancies.json
  def index
    @early_pregnancies = EarlyPregnancy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @early_pregnancies }
    end
  end

  # GET /early_pregnancies/1
  # GET /early_pregnancies/1.json
  def show
    @early_pregnancy = EarlyPregnancy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @early_pregnancy }
    end
  end

  # GET /early_pregnancies/new
  # GET /early_pregnancies/new.json
  def new
    @early_pregnancy = EarlyPregnancy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @early_pregnancy }
    end
  end

  # GET /early_pregnancies/1/edit
  def edit
    @early_pregnancy = EarlyPregnancy.find(params[:id])
  end

  # POST /early_pregnancies
  # POST /early_pregnancies.json
  def create
    @early_pregnancy = EarlyPregnancy.new(params[:early_pregnancy])

    respond_to do |format|
      if @early_pregnancy.save
        format.html { redirect_to @early_pregnancy, notice: 'Early pregnancy was successfully created.' }
        format.json { render json: @early_pregnancy, status: :created, location: @early_pregnancy }
      else
        format.html { render action: "new" }
        format.json { render json: @early_pregnancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /early_pregnancies/1
  # PUT /early_pregnancies/1.json
  def update
    @early_pregnancy = EarlyPregnancy.find(params[:id])

    respond_to do |format|
      if @early_pregnancy.update_attributes(params[:early_pregnancy])
        format.html { redirect_to @early_pregnancy, notice: 'Early pregnancy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @early_pregnancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /early_pregnancies/1
  # DELETE /early_pregnancies/1.json
  def destroy
    @early_pregnancy = EarlyPregnancy.find(params[:id])
    @early_pregnancy.destroy

    respond_to do |format|
      format.html { redirect_to early_pregnancies_url }
      format.json { head :no_content }
    end
  end
end
