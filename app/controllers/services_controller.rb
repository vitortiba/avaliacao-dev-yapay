class ServicesController < ApplicationController
  before_action :find_service, only: [:show]

  def index
    @services = Service.all
  end

  def show
  end

  private
  def find_service
    @service = Service.find(params[:id])
  end
end
