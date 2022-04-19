
class LoginReflex < ApplicationReflex
  def increment
    puts "something"
    @count = element.dataset[:count].to_i + element.dataset[:step].to_i
  end
end