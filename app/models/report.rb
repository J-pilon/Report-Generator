class Report < ApplicationRecord
  belongs_to :carrier

  validates :raw_data, presence: true
end
