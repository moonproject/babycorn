class User < ApplicationRecord
  has_many :expenses, dependent: :nullify

  validates :firstname, length: { minimum: 3, maximum: 15 }#, allow_blank: false
end
