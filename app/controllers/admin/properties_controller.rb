class Admin::PropertiesController < AdminController
  before_action :set_property, except: [:new, :create, :dashboard, :index]

  def dashboard
    @featured_count = Property.featured.count
    @sale_count = Property.for_sale.count
    @rent_count = Property.for_rent.count
    @reserved_count = Property.reserved.count
  end

  def index
    @properties = params[:type].present? ? Property.send("for_#{params[:type]}") : Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to [:admin, @property], notice: 'Property was successfully created.' }
      else
        format.html { render "admin/properties/new" }
      end
    end
  end

  private

  def property_params
    params.require(:property).permit(:name, :year_construction, :plot_area, :constructed_area,
                                    :bed_count, :bath_count, :toiler_count, :garage_count,
                                    :price, :commission, :lat, :long, :street_no, :street_name,
                                    :address, :region, :province, :city, :postal_code, :country,
                                    :furnished, :sold, :reserved, :archived, :visible, :featured,
                                    :for_rent, :for_sale, :avatar)
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
