class InsposController < ApplicationController
  def index
    @inspos = current_user.partner.inspos.uniq.reject { |inspo| inspo.favorited_by?(current_user) || current_user.blocked_by?(inspo)}.sample(5)
  end

  def toggle_favorite
    @inspo = Inspo.find_by(id: params[:id])
    current_user.favorite(@inspo)
  end

  def toggle_blocked
    @inspo = Inspo.find_by(id: params[:id])
    @inspo.block(current_user)
  end
end
