class Expert < ApplicationRecord
  validates :name, :sex, :nation, :occupation, presence: true
end
