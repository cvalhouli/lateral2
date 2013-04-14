class PropertyFieldsController < ApplicationController
  # GET /property_fields
  # GET /property_fields.json
  def index
    @property_fields = PropertyField.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @property_fields }
    end
  end

  # GET /property_fields/1
  # GET /property_fields/1.json
  def show
    @property_field = PropertyField.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property_field }
    end
  end

  # GET /property_fields/new
  # GET /property_fields/new.json
  def new
    @property_field = PropertyField.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property_field }
    end
  end

  # GET /property_fields/1/edit
  def edit
    @property_field = PropertyField.find(params[:id])
  end

  # POST /property_fields
  # POST /property_fields.json
  def create
    @property_field = PropertyField.new(params[:property_field])

    respond_to do |format|
      if @property_field.save
        format.html { redirect_to @property_field.property, notice: 'Property field was successfully created.' }
        format.json { render json: @property_field, status: :created, location: @property_field }
      else
        format.html { render action: "new" }
        format.json { render json: @property_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /property_fields/1
  # PUT /property_fields/1.json
  def update
    @property_field = PropertyField.find(params[:id])

    respond_to do |format|
      if @property_field.update_attributes(params[:property_field])
        format.html { redirect_to @property_field, notice: 'Property field was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_fields/1
  # DELETE /property_fields/1.json
  def destroy
    @property_field = PropertyField.find(params[:id])
    @property_field.destroy

    respond_to do |format|
      format.html { redirect_to property_fields_url }
      format.json { head :no_content }
    end
  end
end
