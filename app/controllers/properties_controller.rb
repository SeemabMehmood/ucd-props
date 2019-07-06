class PropertiesController < ApplicationController
  def show
    @property = Property.find params[:id]
  end

  def index
    @properties = params[:type].present? ? Property.send("for_#{params[:type]}") : Property.all
    @properties = @properties.ordered
  end

  def search
  end
end
