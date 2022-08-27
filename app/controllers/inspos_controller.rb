class InsposController < ApplicationController
  def index
    @inspos = Inspo.all.first(5)
  end

  def toggle_favorite
    @inspo = Inspo.find_by(id: params[:id])
    current_user.favorite(@inspo)
  end
end
