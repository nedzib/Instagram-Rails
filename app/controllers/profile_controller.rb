class ProfileController < ApplicationController
  def index
    redirect_to "/people/sign_in" unless signed_in?
  end
end
