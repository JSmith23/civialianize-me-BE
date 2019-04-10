class VaService

  def initialize(coord)
    @latitude = coord[:lat]
    @longitude = coord[:lng]
  end

  def get_facilities
    get_json("?apikey=#{ENV['VA_API_KEY']}&lat=#{@latitude}&long=#{@longitude}")[:data]
  end

  private

  def get_json(path)
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names:true)
  end

  def conn
    Faraday.new(:url => "https://dev-api.va.gov/services/va_facilities/v0/facilities") do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end
end
