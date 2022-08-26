class PreferencesController < ApplicationController
  def new
  end

  def create
    @partner = Partner.find(params[:partner_id])
    @preference = Preference.new(preference_params)
    @preference.partner = @partner

    respond_to do |format|
      if @preference.save
        format.html { redirect_to partner_keywords_path(@partner) }
        format.json
      else
        format.html { render "keywords/index", status: 422 }
        format.json
      end
    end
  end

  def update
  end

  private

  def preference_params
    params.require(:preference).permit(:keyword_id, :partner_id)
  end
end
