class API:MissionsController < ApplicationController
  def index
    missions = Mission.all
    render json: missions
  end

  def show
    mission = Mission.find(params[:id])
    render json: mission
  end
end
