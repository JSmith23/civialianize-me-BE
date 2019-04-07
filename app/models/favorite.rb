class Favorite < ApplicationRecord
  validates_presence_of :name,
                        :category,
                        :url,
                        :phone
end
