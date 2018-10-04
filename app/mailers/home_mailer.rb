class HomeMailer < ApplicationMailer
  def send_sell_email(from, name, description, contact)
    @description = description
    @contact = contact
    @name = name

    mail from: from
  end

  def send_property_email(from, name, description, contact)
    @description = description
    @contact = contact
    @name = name

    mail from: from
  end
end
