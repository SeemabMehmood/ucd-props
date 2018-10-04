class Admin::PropertiesController < AdminController
  def index
    @properties = Property.all
  end
end
