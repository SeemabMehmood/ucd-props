class Property < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  PRICE_SALE = [25000, 50000, 75000, 100000,
                150000, 250000, 500000, 1000000,
                2000000, 5000000, 10000000]

  PRICE_RENT = [250, 500, 750, 1000,
                1500, 2500, 5000, 10000,
                20000, 50000]

  TYPE = ["Apartment", "Bungalow", "Chalet",
          "Commercial Premises", "Country House", "Flat",
          "Garage", "Hotel", "Investment", "Land", "Penthouse",
          "Residential Building", "Semi-detached", "Studio",
          "Villa", "Warehouse"]

  validate :has_type

  validates :name, :year_construction, :country, :lat, :long, presence: true
  validates :price, numericality: { greater_than: 0.0 }

  scope :for_rent, -> { where(for_rent: true) }
  scope :for_sale, -> { where(for_sale: true) }
  scope :visible,  -> { where(visible: true) }
  scope :featured, -> { where(featured: true) }
  scope :reserved, -> { where(reserved: true) }
  scope :ordered, ->  { order(created_at: :desc) }
  scope :for_price_from, -> (minimum_price) { where("price >= ?", minimum_price.to_s) }
  scope :for_price_till, -> (maximum_price) { where("price <= ?", maximum_price.to_s) }
  scope :count_bathrooms, -> (min_count_bathrooms) { where("bath_count >= ?", min_count_bathrooms.to_s) }
  scope :count_bedrooms, -> (min_count_bedrooms) { where("bed_count >= ?", min_count_bedrooms.to_s) }

  def geocodeable_address
    street_name + " , " + city + " , " + province + " , " + postal_code
  end

  def has_garage
    garage_count && (garage_count > 0)
  end

  def type
    return 'Rent' if for_rent
    return 'Sale' if for_sale
  end

  def get_property_type
    property_type ? property_type : "Unknown"
  end

  private

  def has_type
    if for_sale.blank? && for_rent.blank?
      errors.add(:base, "Must have at least one type either For Rent or For Sale")
    end
  end
end
