class HomeController < ApplicationController
  def send_email_request
    HomeMailer.send_email( params[:email], params[:name], params[:description], params[:phone]).deliver_now
    params.clear()
    render 'home/sell', notice: "Request successfully sent."
  end
end
