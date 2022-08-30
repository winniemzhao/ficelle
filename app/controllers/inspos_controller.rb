class InsposController < ApplicationController
  def index
    if current_user.partner.nil?
      redirect_to us_path
    else
      @inspos = current_user.partner.inspos.uniq.reject { |inspo| inspo.favorited_by?(current_user) || current_user.blocked_by?(inspo) }.sample(5)
    end
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
