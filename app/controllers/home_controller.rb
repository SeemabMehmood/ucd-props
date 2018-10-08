class HomeController < ApplicationController

  def index
    @featured_props = Property.featured.ordered.first(6)
  end

  def send_sell_request
    if params[:name].present? && params[:email].present? && params[:description].present?
      HomeMailer.send_sell_email( params[:email], params[:name], params[:description], params[:phone]).deliver_now
      message = "You Sell Property request successfully sent."
    else
      message = "Please fill in the complete form."
    end
    redirect_to sell_path, notice: message
  end

  def send_property_request
    if params[:name].present? && params[:email].present? && params[:description].present?
      HomeMailer.send_property_email( params[:email], params[:name], params[:description], params[:phone], params[:property_id]).deliver_now
      message = "Your Property Management request successfully sent."
    else
      message = "Please fill in the complete form."
    end
    redirect_to params[:property_id].present? ? property_path(params[:property_id]) : property_management_path, notice: message
  end

  def send_contact_request
    if params[:name].present? && params[:email].present? && params[:subject].present? && params[:description].present?
      HomeMailer.send_contact_email( params[:email], params[:name], params[:subject], params[:description], params[:phone]).deliver_now
      message = "You Contact request successfully sent."
    else
      message = "Please fill in the complete form."
    end
    redirect_to contact_us_path, notice: message
  end
end
