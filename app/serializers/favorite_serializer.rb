class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :name, :category, :url, :phone
end
