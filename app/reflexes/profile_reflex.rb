
class ProfileReflex < ApplicationReflex

  def update(id="", username="", name="", email="", cellphone="")
    change = 0
    usuario = Person.find(id.to_i)
    if username != ""
      usuario.username = username
      change = 1
    end
    if name != ""
      usuario.name = name
      change = 1
    end
    if email != ""
      usuario.email = email
      change = 1
    end
    if cellphone != ""
      usuario.cellphone = cellphone
      change = 1
    end
    if change == 1
      usuario.save
    end
  end

  def error(message)
    flash.alert = message
  end

  def remove_notices
    flash.discard
  end
end


