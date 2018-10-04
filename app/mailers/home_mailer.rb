class HomeMailer < ApplicationMailer
  def send_sell_email(from, name, description, contact)
    @description = description
    @contact = contact
    @name = name

    mail from: from
  end
end
