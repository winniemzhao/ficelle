class InsposController < ApplicationController
  def index
    @inspos = Inspo.all
    # if current_user && current_user.partner
    #   @inspos = current_user.partner.inspos.uniq.reject do |inspo|
    #     inspo.favorited_by?(current_user)
    #   end.reject do |inspo|
    #     current_user.blocked_by?(inspo)
    #   end.sample(5)
    #   @inspos = Inspo.all.sample(5) if @inspos.empty?
    # end
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
