class PartnersController < ApplicationController
  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(params_partner)
    @partner.user = current_user
    if @partner.save
      redirect to dashboard_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def params_partner
    params.require(:partner).permit(:name, :birthday, :phone_number, :email, :location)
  end
end
