class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def show
    render template: "pages/#{params[:page]}"
  end
end
