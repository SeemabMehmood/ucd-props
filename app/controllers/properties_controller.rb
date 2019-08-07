class PropertiesController < ApplicationController
  def show
    @property = Property.find params[:id]
  end

  def index
    @properties = params[:type].present? ? Property.send("for_#{params[:type]}") : Property.all
    @properties = search(@properties, params)
    @properties = @properties.ordered
  end

private

  def search(properties, params)

    if params[:price_from].present?
      if params[:price_till].blank?
        properties = properties.for_price_from(params[:price_from].delete(',').to_f)
      else
        properties = properties.price_between(params[:price_from].delete(',').to_f, params[:price_till].delete(',').to_f)
      end
    elsif params[:price_till].present?
      properties = properties.for_price_till(params[:price_till].delete(',').to_f)
    end

    if params[:property_type].present?
      properties = properties.any? ? properties.for_property_type(params[:property_type]) : Property.for_property_type(params[:property_type])
    end

    if params[:bedrooms].present?
      properties = properties.any? ? properties.count_bedrooms(params[:bedrooms]) : Property.count_bedrooms(params[:bedrooms])
    end

    if params[:bathrooms].present?
      properties = properties.any? ? properties.count_bathrooms(params[:bathrooms]) : Property.count_bathrooms(params[:bathrooms])
    end
    properties
  end
end
