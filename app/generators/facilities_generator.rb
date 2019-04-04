class FacilitiesGenerator
  attr_reader :location
  def initialize(location)
    @location = location
    @geo = GeocodeService.new(@location).get_coordinates
    @va = VaService.new(@geo).get_facilities
  end

  def get_facilities
    va = @va
    va.map do |va_data|
      Facilities.new(va_data)
    end
  end

end