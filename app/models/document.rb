class Document < ApplicationRecord
  belongs_to :carrier

  validates :category, :hash, presence: true
end
