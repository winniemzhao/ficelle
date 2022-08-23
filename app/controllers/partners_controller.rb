class PartnersController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

----
# This will create a conflict. Please add :photo to the permitted params.
def article_params
  params.require(:article).permit(:title, :body, :photo)
end
