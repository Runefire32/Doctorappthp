class Doctor < ApplicationRecord
has_many :rdvs
has_many :patients , through: :rdv
belongs_to :city ,optional: true
has_and_belongs_to_many :specialities
end
