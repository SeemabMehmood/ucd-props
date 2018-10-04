class AdminController < ApplicationController
  layout 'admin'

  before_action :authenticate

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "admin"
    end
  end
end
