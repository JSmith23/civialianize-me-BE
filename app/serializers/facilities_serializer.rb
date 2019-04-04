class FacilitiesSerializer
  include FastJsonapi::ObjectSerializer
  set_id :location
  attributes :facilities
end
