class InsposController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    @inspos = Inspo.all.sample(5)
  end

  def toggle_favorite
    @inspo = Inspo.find_by(id: params[:id])
    current_user.favorite(@inspo)
  end
end
