class LandlordsController < ApplicationController
  before_action :set_landlord, only: %i[ show ]
  
  def index
    @landlords = Landlord.all
  end

  def show
  end
end

private

  def set_landlord
    @landlord = Landlord.find_by_id(params[:id])
  end