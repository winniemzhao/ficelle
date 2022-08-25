class InsposController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    @inspos = Inspo.all
  end

  def toggle_favorite
    @inspo = Inspo.find_by(id: params[:id])
    current_user.favorited?(@inspo) ? current_user.unfavorite(@inspo) : current_user.favorite(@inspo)
  end
end
