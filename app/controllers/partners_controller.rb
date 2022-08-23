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
  end

  def update
  end

  def destroy
  end

  private

  def partner_params
    params.require(:partner).permit(:name, :birthday, :phone_number, :email, :location)
  end
end

----
# This will create a conflict. Please add :photo to the permitted params.
def article_params
  params.require(:article).permit(:title, :body, :photo)
end
