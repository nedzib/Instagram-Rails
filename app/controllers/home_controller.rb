class HomeController < ApplicationController

  def index
    if signed_in?
      @posts = Post.where(userID: current_person.id)
      @comment = Comment.all
    else
      redirect_to "/people/sign_in"
    end
  end

  def new
    @post = Post.new
  end

end
