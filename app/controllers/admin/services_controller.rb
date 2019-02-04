module Admin
  class ServicesController < ApplicationController
    before_action :authenticate_user!
    before_action :find_service, only: [:show, :edit, :update, :destroy]

    def index
      @services = Service.all
    end

    def show
    end

    def new
      @service = Service.new
    end

    def edit
    end

    def create
      @service = Service.new(service_params)

      if @service.save
        redirect_to admin_services_path
      else
        render 'new'
      end
    end

    def update
      if @service.update(service_params)
        redirect_to admin_services_path
      else
        render 'edit'
      end
    end

    def destroy
      @service.destroy

      redirect_to admin_services_path
    end

    private
    def service_params
      params.require(:service).permit(:description, :value, :image)
    end

    def find_service
      @service = Service.find(params[:id])
    end
  end
end
