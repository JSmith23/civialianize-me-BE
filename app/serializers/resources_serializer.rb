class ResourcesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :category, :url, :phone, :logo, :description
end
