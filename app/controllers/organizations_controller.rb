class OrganizationsController < ApplicationController
  before_action :set_organization, only: :show

  def index
    @organizations = Organization.everything["data"]["items"]
  end

  def show
    @org = Organization.find(search_params)["data"]
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
