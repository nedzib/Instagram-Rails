class LoginController < ApplicationController
  def login
    @count = 0
  end
  def try
    @nombre = params[:user]
    entity = User.find_by(username:@nombre)
    print "||||||||||||||||||||||"
    if entity == nil
      puts "No User"
    else
      puts entity
    end
  end
end
