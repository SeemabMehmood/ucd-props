class PropertiesController < ApplicationController
  def show
    @property = Property.find params[:id]
  end

  def index
  end
end
