class Expert < ApplicationRecord
  validates :name, :sex, :nation, :occupation, presence: true
  has_one_attached :avatar
end
