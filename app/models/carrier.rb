class Carrier < ApplicationRecord
  has_many :documents
  has_many :reports

  validates :name, presence: true
end
