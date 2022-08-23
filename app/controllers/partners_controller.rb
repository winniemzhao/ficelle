class PartnersController < ApplicationController
  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(partner_params)
    @partner.user = current_user
    if @partner.save
      redirect_to dashboard_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def edit
    @partner = Partner.find(params[:id])
  end

  def update
    @partner = Partner.find(params[:id])
    @partner.update(partner_params)
    redirect_to us_path
  end

  def destroy
    @partner = Partner.find(params[:id])
    @partner.destroy
    redirect_to dashboard_path
  end

  private

  def partner_params
    params.require(:partner).permit(:name, :birthday, :phone_number, :email, :location, :photo)
  end
end
