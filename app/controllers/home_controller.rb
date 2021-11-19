class HomeController < ApplicationController
  def index
    unless signed_in?
      redirect_to "/people/sign_in"
    end
  end
end
