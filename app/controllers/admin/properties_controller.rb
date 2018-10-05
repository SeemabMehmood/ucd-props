class Admin::PropertiesController < AdminController

  def dashboard
    @featured_count = Property.featured.count
    @sale_count = Property.for_sale.count
    @rent_count = Property.for_rent.count
    @reserved_count = Property.reserved.count
  end

  def index
    @properties = Property.all
  end
end
