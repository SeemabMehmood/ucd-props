class HomeController < ApplicationController
  def send_email_request
    if params[:name].present? && params[:email].present? && params[:description].present?
      HomeMailer.send_email( params[:email], params[:name], params[:description], params[:phone]).deliver_now
      message = "You sell property request successfully sent."
    else
      message = "Please fill in the complete form."
    end
    redirect_to sell_path, notice: message
  end
end
