class PreferencesController < ApplicationController
  def create
    @preference = Preference.new(keyword_id: params[:keyword_id].to_i)
    @preference.partner = current_user.partner
    respond_to do |format|
      if @preference.save
        format.html { redirect_to partner_keywords_path(current_user.partner) }
        format.json
      else
        format.html { render "keywords/index", status: 422 }
        format.json
      end
    end
  end

  def destroy
    @preference = Preference.find_by(keyword_id: params[:keyword_id].to_i, partner_id: current_user.partner.id)
    @preference.destroy
    respond_to do |format|
      format.html { redirect_to partner_keywords_path(current_user.partner) }
      format.json
    end
  end

  private

  def preference_params
    params.require(:preference).permit(:keyword_id)
  end
end
