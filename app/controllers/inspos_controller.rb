class InsposController < ApplicationController
  def index
    if current_user.partner.nil?
      redirect_to new_partner_path
    else
      @inspos = current_user.partner.inspos.uniq.reject do |inspo|
        inspo.favorited_by?(current_user)
      end.reject do |inspo|
        current_user.blocked_by?(inspo)
      end.sample(5)
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
