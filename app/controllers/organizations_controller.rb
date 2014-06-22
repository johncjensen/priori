class OrganizationsController < ApplicationController
  before_action :set_organization, only: :show

  # GET /organizations
  # GET /organizations.json
  def index
    if search_params 
      logger.debug "Got params: #{search_params}"
      @organization = Organization.find(search_params)
    else
      logger.debug "No params!"
    end
    # @organizations = Organization.all
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:name])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_params
      params[:name]
    end
end
