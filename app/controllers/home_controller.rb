class HomeController < ApplicationController
  def send_sell_request
    if params[:name].present? && params[:email].present? && params[:description].present?
      HomeMailer.send_sell_email( params[:email], params[:name], params[:description], params[:phone]).deliver_now
      message = "You sell property request successfully sent."
    else
      message = "Please fill in the complete form."
    end
    redirect_to sell_path, notice: message
  end

  def send_property_request
    if params[:name].present? && params[:email].present? && params[:description].present?
      HomeMailer.send_property_email( params[:email], params[:name], params[:description], params[:phone]).deliver_now
      message = "You Property Management request successfully sent."
    else
      message = "Please fill in the complete form."
    end
    redirect_to property_management_path, notice: message
  end
end
