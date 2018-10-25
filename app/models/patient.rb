class Patient < ApplicationRecord
has_many :rdvs
has_many :doctors , through:  :rdv
belongs_to :city , optional: true


end
