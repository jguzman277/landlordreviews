class PropertiesController < ApplicationController

  before_action :set_property, only: %i[ show edit update destroy ]

  before_action except: [:index, :show] do
    if current_landlord != nil
      authenticate_landlord!
    else 
      authenticate_user!
    end
  end

  # GET /properties or /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1 or /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties or /properties.json
  def create
    @property = Property.new(property_params)
    if current_landlord
      if current_landlord.landlord_type === "Individual"
        @property.created_by = current_landlord.full_name
      else
        @property.created_by = current_landlord.company_name
      end
      @property.landlord_id = current_landlord.id
    else
      @property.created_by = current_user.email
    end

    respond_to do |format|
      if @property.save
        format.html { redirect_to property_url(@property), notice: "Property was successfully created." }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1 or /properties/1.json
  def update
    if current_landlord
      if current_landlord.landlord_type === "Individual"
        @property.updated_by = current_landlord.full_name
      else
        @property.updated_by = current_landlord.company_name
      end
      @property.landlord_id = current_landlord.id
    else
      @property.updated_by = current_user.email
    end

    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to property_url(@property), notice: "Property was successfully updated." }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def claim_property
    @property = Property.all.find(params[:id])
    if landlord_signed_in?
      if !(@property.landlord_id)
        @property.landlord_id = current_landlord.id
        @property.save
        redirect_to root_path
        flash[:alert] = "Property claim submitted for approval."
      else
        flash[:alert] = "Property already claimed."
      end
    end
  end

  # DELETE /properties/1 or /properties/1.json
  def destroy
    @property.destroy

    respond_to do |format|
      format.html { redirect_to properties_url, notice: "Property was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:street_address, :unit_number, :city, :state, :country, :zip_code, :property_type_id, :bedroom_id, { amenity_ids: []}, { room_ids: []}, :full_bathrooms, :half_bathrooms, :state_id, :country_id, :description, :landlord_id )
    end
end
