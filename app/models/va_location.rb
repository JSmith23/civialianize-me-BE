class VaLocation < ApplicationRecord
  validates_presence_of :name,
                        :phone,
                        :address,
                        :city,
                        :state,
                        :zip_code
end
