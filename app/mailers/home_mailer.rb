class HomeMailer < ApplicationMailer
  def send_sell_email(from, name, description, contact)
    @description = description
    @contact = contact
    @name = name

    mail from: from
  end

  def send_property_email(from, name, description, contact, property_id)
    @description = description
    @contact = contact
    @name = name
    @property = Property.find(property_id) if property_id.present?

    mail from: from
  end

  def send_contact_email(from, name, subject, description, contact)
    @description = description
    @contact = contact
    @name = name

    mail from: from, subject: subject
  end
end
