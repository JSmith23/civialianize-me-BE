class FacilitiesSerializer
  include FastJsonapi::ObjectSerializer
  set_id :location
  attributes :get_facilities
end
