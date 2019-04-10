class Facilities
  attr_reader :name, :phone, :address, :city, :state, :zip_code
  def initialize(data)
    @name = data[:attributes][:name]
    @phone = data[:attributes][:phone][:main]
    @address = data[:attributes][:address][:physical][:address_1]
    @city = data[:attributes][:address][:physical][:city]
    @state = data[:attributes][:address][:physical][:state]
    @zip_code = data[:attributes][:address][:physical][:zip]
  end
end
