class City < ApplicationRecord
has_many :doctors
has_many :rdvs
has_many :patients

end
