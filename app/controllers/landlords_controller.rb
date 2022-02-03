class LandlordsController < ApplicationController
  before_action :set_landlord, only: %i[ show ]
  
  def index
    @landlords = Landlord.all
  end

  def show
    @properties = Property.where(landlord_id: @landlord.id, claim_approved: true)
  end
end

private

  def set_landlord
    @landlord = Landlord.find_by_id(params[:id])
  end